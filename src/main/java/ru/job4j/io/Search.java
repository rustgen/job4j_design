package ru.job4j.io;

import java.io.File;
import java.io.IOException;
import java.nio.file.*;
import java.util.List;
import java.util.function.Predicate;

public class Search {

    public static void main(String[] args) throws IOException {
        search(validate(args), p -> p.toFile().getName().endsWith(args[1])).forEach(System.out::println);
    }

    public static Path validate(String[] args) {
        if (args.length < 2) {
            throw new IllegalArgumentException("Parameters should be 2 follow condition.");
        }
        if (!new File(args[0]).isDirectory()) {
            throw new IllegalArgumentException(
                    String.format("There is no such directory as %s.", args[0]));
        }
        if (!args[1].startsWith(".")) {
            throw new IllegalArgumentException(
                    String.format("2 parameter %s doesn't start with '.' symbol", args[1]));
        }
        return Path.of(args[0]);
    }

    public static List<Path> search(Path root, Predicate<Path> condition) throws IOException {
        SearchFiles searcher = new SearchFiles(condition);
        Files.walkFileTree(root, searcher);
        return searcher.getPaths();
    }
}
