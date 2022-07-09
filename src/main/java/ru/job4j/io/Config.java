package ru.job4j.io;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

public class Config {

    private final String path;
    private final Map<String, String> values = new HashMap<>();

    public Config(String path) {
        this.path = path;
    }

    public void load() {
        try (BufferedReader read = new BufferedReader(new FileReader(this.path))) {
            String val;
            while (read.ready()) {
                val = read.readLine();
                if (!(val.startsWith("#")) && !val.isEmpty()) {
                    String[] separate = val.split("=", 2);
                    if (separate.length < 2 || separate[0].isEmpty() || separate[1].isEmpty()) {
                        throw new IllegalArgumentException(
                                String.format("The string %s doesn't match the key=value condition", val)
                        );
                    }
                    values.put(separate[0], separate[1]);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String value(String key) {
        return values.get(key);
    }

    @Override
    public String toString() {
        StringJoiner out = new StringJoiner(System.lineSeparator());
        try (BufferedReader read = new BufferedReader(new FileReader(this.path))) {
            read.lines().forEach(out::add);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return out.toString();
    }

    public static void main(String[] args) {
        System.out.println(new Config("./data/app.properties"));
    }
}
