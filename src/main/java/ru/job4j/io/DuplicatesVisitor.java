package ru.job4j.io;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.*;

public class DuplicatesVisitor extends SimpleFileVisitor<Path> {

    private final Map<FileProperty, List<Path>> files = new HashMap<>();

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
        FileProperty fileProperty = new FileProperty(file.toFile().length(),
                file.getFileName().toString());
        files.putIfAbsent(fileProperty, new ArrayList<>());
        List<Path> list = files.get(fileProperty);
        list.add(file);
        return super.visitFile(file, attrs);
    }

    public void printFiles() {
        for (Map.Entry<FileProperty, List<Path>> l : files.entrySet()) {
            if (l.getValue().size() > 1) {
                System.out.println(l.getKey());
                l.getValue().forEach(v -> System.out.println(v.toAbsolutePath()));
            }
        }
    }
}
