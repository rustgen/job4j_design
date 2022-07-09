package ru.job4j.io;

import java.io.*;

public class Analizy {

    public void unavailable(String source, String target) {
        try (BufferedReader reader = new BufferedReader(new FileReader(source))) {
            boolean server = true;
            String err = "";
            for (String value : reader.lines().toList()) {
                String[] log = value.split(" ");
                try (PrintWriter out = new PrintWriter(new FileOutputStream(target))) {
                    if (server && log[0].equals("400") || log[0].equals("500")) {
                        err = log[0] + ";";
                        server = false;
                    }
                    if (!server && !log[0].equals("400") || !log[0].equals("500")) {
                        String start = err + log[0] + ";";
                        out.write(start);
                        server = true;
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        try (PrintWriter out = new PrintWriter(new FileOutputStream("unavailable.csv"))) {
            out.println("15:01:30;15:02:32");
            out.println("15:10:30;23:12:32");
        } catch (Exception e) {
            e.printStackTrace();
        }

        Analizy analizy = new Analizy();
        analizy.unavailable("./data/src/main/java/ru/job4j/io/server.log",
                "./data/analizy.txt");
    }
}
