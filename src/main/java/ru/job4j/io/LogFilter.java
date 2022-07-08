package ru.job4j.io;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

public class LogFilter {
    public List<String> filter(String file) {
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
    public static void main(String[] args) {
        LogFilter logFilter = new LogFilter();
        List<String> log = logFilter.filter("log.txt");
        System.out.println(log);
    }
}
