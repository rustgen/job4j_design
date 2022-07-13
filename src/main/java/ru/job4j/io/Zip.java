package ru.job4j.io;

import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class Zip {

    public void packFiles(List<Path> sources, File target) {
        try (ZipOutputStream zip = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(target)))) {
            for (Path path : sources) {
                zip.putNextEntry(new ZipEntry(path.toFile().getPath()));
                try (BufferedInputStream out = new BufferedInputStream(new FileInputStream(path.toFile()))) {
                    zip.write(out.readAllBytes());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArgsName zipValidate(String[] args) {
        if (args.length < 3) {
            throw new IllegalArgumentException("There are should be 3 parameters");
        }
        ArgsName name = ArgsName.of(args);
        if (!name.get("e").startsWith(".")) {
            throw new IllegalArgumentException(String.format(
                    "This exclusive - '%s' doesn't start with '.' .", name.get("e")
            ));
        }
        if (!Path.of(name.get("d")).toFile().isDirectory()) {
            throw  new IllegalArgumentException(String.format(
                    "This directory - '%s' doesn't exist.", name.get("d")
            ));
        }
        return name;
    }

    public static void main(String[] args) throws IOException {
        Zip zip = new Zip();
        ArgsName map = zipValidate(args);
        List<Path> list = Search.search(Paths.get(map.get("d")),
                path -> !path.toFile().getName().endsWith(map.get("e")));
        zip.packFiles(list, new File(map.get("o")));
    }
}

