package ru.job4j.io;

import java.io.*;

public class Analizy {

    private static boolean server = true;

    public static void unavailable(String source, String target) throws IOException {
        try (BufferedReader reader = new BufferedReader(new FileReader(source));
             PrintWriter out = new PrintWriter(new FileOutputStream(target))) {
            StringBuilder err = new StringBuilder();
            reader.lines().forEach(str -> check(err, str));
            out.println(err);
        }
    }

    public static void check(StringBuilder err, String line) {
        String[] log = line.split(" ");
        if (server && ("400".equals(log[0]) || "500".equals(log[0]))) {
            err.append(log[1]).append(";");
            server = false;
        }
        if (!server && ("200".equals(log[0]) || "300".equals(log[0]))) {
            err.append(log[1]).append(";").append(System.lineSeparator());
            server = true;
        }
    }

    public static void main(String[] args) throws IOException {
        unavailable("./data/server.log",
                "./data/analizy.txt");
    }
}
