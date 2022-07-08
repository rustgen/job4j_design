package ru.job4j.io;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class LogFilter {
    public static List<String> filter(String file) {
        List<String> res = new ArrayList<>();

        try (FileReader reader = new FileReader(file);
             BufferedReader in = new BufferedReader(reader)) {
            List<String> list = in.lines().toList();
            for (String line : list) {
                String[] fullLine = line.split(" ");
                if ((fullLine[fullLine.length - 2]).contains("404")) {
                    res.add(line + System.lineSeparator());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return res;
    }

    public static void save(List<String> log, String file) {
        try (PrintWriter out = new PrintWriter(
                new BufferedOutputStream(
                        new FileOutputStream(file)
                ))) {
            for (String line : log) {
                out.write(line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        List<String> log = filter("log.txt");
        save(log, "404.txt");
    }
}
