package ru.job4j.io;

import ru.job4j.map.Map;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.*;

public class DuplicatesVisitor extends SimpleFileVisitor<Path> {

    private final HashMap<FileProperty, Path> files = new HashMap<>();
    private Set<Path> paths = new LinkedHashSet<>();

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
        FileProperty fileProperty = new FileProperty(file.toFile().length(),
                file.getFileName().toString());
        if (!files.containsKey(fileProperty)) {
            files.put(fileProperty, file);
        } else {
            paths.add(files.get(fileProperty));
            paths.add(file);
        }
        return super.visitFile(file, attrs);
    }

    public void printFiles() {
        paths.forEach(System.out::println);
    }
}
