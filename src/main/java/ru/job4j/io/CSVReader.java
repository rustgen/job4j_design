package ru.job4j.io;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class CSVReader {

    public static void handle(ArgsName argsName) throws Exception {
        String delimiter = argsName.get("delimiter");
        Path path = Path.of(argsName.get("path"));
        List<String> filters = List.of(argsName.get("filter").split(","));
        List<Integer> index = getIndex(path, filters, delimiter);
        String dataColumn = getDataColumn(index, path, delimiter);
        writeIn(dataColumn, argsName);
    }

    public static void writeIn(String str, ArgsName name) throws IOException {
        if ("stdout".equals(name.get("out"))) {
            System.out.println(str);
        } else {
            try (BufferedOutputStream out = new BufferedOutputStream(
                    new FileOutputStream(name.get("out")))) {
                out.write(str.getBytes(StandardCharsets.UTF_8));
            }
        }
    }

    public static String getDataColumn(List<Integer> index, Path path, String delimiter) throws IOException {
        String str = "";
        try (var sc = new Scanner(path)) {
            while (sc.hasNextLine()) {
                String[] line = sc.nextLine().split(delimiter);
                for (int i = 0; i < index.size(); i++) {
                    if (i < index.size() - 1) {
                        str = str.concat(line[index.get(i)]).concat(delimiter);
                    } else if (i == index.size() - 1) {
                        str = str.concat(line[index.get(i)]).concat(System.lineSeparator());
                    }
                }
            }
        }
        return str;
    }

    public static List<Integer> getIndex(Path path, List<String> filter, String delimiter) throws IOException {
        List<Integer> index = new ArrayList<>();
        try (var sc = new Scanner(path, "utf-8")) {
            List<String> firstLine = List.of(sc.nextLine().split(delimiter));
            for (int i = 0; i < firstLine.size(); i++) {
                if (filter.contains(firstLine.get(i))) {
                    index.add(i);
                }
            }
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
        if (!";".equals(name.get("delimiter")) && !"stdout".equals(name.get("out"))) {
            throw new IllegalArgumentException(String.format(
                    "Delimiter should be only ',' !", name.get("delimiter")
            ));
        }
        if (!new File(name.get("out")).isFile()) {
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
        handle(name);
        validateCSV(args, name);
    }
}
