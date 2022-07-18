package ru.job4j.io;

import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class CSVReader {

    public static void handle(ArgsName argsName) throws Exception {
        String delimiter = argsName.get("delimiter");
        Path path = Path.of(argsName.get("path"));
        List<String> filters = List.of(argsName.get("filter").split(","));
        System.out.println(filters);
        System.out.println(getIndex(path, filters, delimiter));
    }

    public static String getDataColumn(List<Integer> index, Path path, String delimiter) throws IOException {
        String str = "";
        try (var sc = new Scanner(path)) {
            while (sc.hasNextLine()) {
                String[] line = sc.nextLine().split(delimiter);
                for (int i = 0; i < index.size(); i++) {
                    if (i < index.size() - 1) {
                        str.concat(line[index.get(i)]).concat(delimiter);
                    }
                }

            }
            System.out.println(str);

        }
        return str;
    }

    public static List<Integer> getIndex(Path path, List<String> filter, String delimiter) throws IOException {
        List<Integer> index = new ArrayList<>();
        try (var sc = new Scanner(path)) {
            List<String> firstLine = List.of(sc.nextLine().split(delimiter));
//            System.out.println(firstLine);
//            firstLine.forEach(System.out::println);
            System.out.println(filter);
            for (int i = 0; i < firstLine.size(); i++) {
                if (filter.contains(firstLine.get(i))) {
                    index.add(i);
                }
            }
            System.out.println(index);
        }
        return index;
    }

    public static void validateCSV(String[] args, ArgsName name) {
        if (args.length != 4) {
            throw new IllegalArgumentException("There are should be 4 parameters following condition!");
        }
        if (!Paths.get(name.get("path")).toFile().exists()) {
            throw new IllegalArgumentException(String.format(
                    "The first parameter '%s' doesn't exist!", name.get("path")
            ));
        }
        if (!",".equals(name.get("delimiter"))) {
            throw new IllegalArgumentException(String.format(
                    "Delimiter should be only ',' !", name.get("delimiter")
            ));
        }
        if (!"stdout".equals(name.get("out"))) {
            throw new IllegalArgumentException(String.format(
                    "Out should be only 'stdout' !", name.get("out")
            ));
        }
        if (name.get("filter").isEmpty()) {
            throw new IllegalArgumentException("Filter must contain at least 1 parameter");
        }
    }

    public static void main(String[] args) throws Exception {
        ArgsName name = ArgsName.of(args);
        validateCSV(args, name);
        handle(name);
    }
}
