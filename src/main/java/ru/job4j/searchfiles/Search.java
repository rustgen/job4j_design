package ru.job4j.searchfiles;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.regex.Pattern;

public class Search {

    /* Example configuration of args */
    /* -d=/Users/rust/Projects/job4j_design -n=.*\..*$ -t=regex -o=log.txt  */
    public static void main(String[] args) throws IOException {
        ArgsName name = ArgsName.of(args);
        validateArgs(args, name);
        Predicate<Path> pathPredicate = searchMasks(name);
        List<Path> list = search(Path.of(name.get("d")), pathPredicate);
        writeFile(list, name.get("o"));
    }

    public static Predicate<Path> searchMasks(ArgsName name) {
        Predicate<Path> search = null;
        if ("name".equals(name.get("t"))) {
            search =  p -> p.toFile().getName().equals(name.get("n"));
        } else if ("mask".equals(name.get("t"))) {
            search = p -> p.toFile().getName().matches(name.get("n").replace(".", "[.]")
                    .replace("*", ".+").replace("?", "."));
        } else if ("regex".equals(name.get("t"))) {
            search = p -> p.toFile().getName().matches(name.get("n"));
        }
        return search;
    }

    public static List<Path> search(Path root, Predicate<Path> condition) throws IOException {
        SearchFiles searcher = new SearchFiles(condition);
        Files.walkFileTree(root, searcher);
        return searcher.getPaths();
    }

    public static void writeFile(List<Path> log, String file) throws IOException {
        try (PrintWriter out = new PrintWriter(
                new BufferedOutputStream(
                        new FileOutputStream(file)
                ))) {
            for (Path line : log) {
                out.println(line);
            }
        }
    }

    public static Path validateArgs(String[] args, ArgsName name) {
        if (args.length != 4) {
            throw new IllegalArgumentException("Parameters should be 4 follow condition.");
        }
        if (!Path.of(name.get("d")).toFile().isDirectory()
                || !Path.of(name.get("d")).toFile().exists()) {
            throw new IllegalArgumentException(
                    String.format("There is no such directory as '%s' or it doesn't exist.",
                            name.get("d")));
        }
        if ("name".equals(name.get("t")) && name.get("n").startsWith(".")) {
            throw new IllegalArgumentException(String.format(
                    "Second parameter %s doesn't equal to third parameter name: %s .",
                    name.get("n"), name.get("t")));
        }
        if ("mask".equals(name.get("t")) && !name.get("n").startsWith("*")) {
            throw new IllegalStateException(String.format(
                    "Second parameter %s doesn't match to third parameter mask: %s .",
                    name.get("n"), name.get("t")));
        }
        if ("regex".equals(name.get("t")) && !name.get("n").endsWith("$")) {
            throw new IllegalStateException(String.format(
                    "Second parameter %s doesn't match to third parameter regex: %s .",
                    name.get("n"), name.get("t")));
        }
        return Path.of(name.get("d"));
    }
}
