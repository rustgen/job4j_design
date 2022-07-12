package ru.job4j.io;

import ru.job4j.map.Map;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.*;

public class DuplicatesVisitor extends SimpleFileVisitor<Path> {

    private final HashMap<FileProperty, List<Path>> files = new HashMap<>();

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
        files.entrySet().forEach(System.out::println);
    }
}
