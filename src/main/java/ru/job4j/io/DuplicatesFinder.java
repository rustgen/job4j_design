package ru.job4j.io;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class DuplicatesFinder {
    public static void main(String[] args) throws IOException {

        Files.walkFileTree(Path.of("/Users/rust/Projects/job4j_design/duplicateFiles/my_photo.jpeg"),
                new DuplicatesVisitor());
        DuplicatesVisitor visitor = new DuplicatesVisitor();
        visitor.printFiles();
    }
}
