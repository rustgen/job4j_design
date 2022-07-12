package ru.job4j.io;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class ArgsName {

    private final Map<String, String> values = new HashMap<>();

    public String get(String key) {
        if (!values.containsKey(key)) {
            throw new IllegalArgumentException("The required key as a key doesn't exist");
        }
        return values.get(key);
    }

    private void check(String[] value) {
        if (value.length < 2 || value[0].isEmpty() || value[1].isEmpty()
            || !value[0].startsWith("-") || value[0].length() < 2) {
            throw new IllegalArgumentException(String.format(
                    "The %s string of array don't match the -key=value condition", value.toString())
            );
        }
    }

    private void parse(String[] args) {
        for (String str : args) {
            String[] val = str.split("=", 2);
            check(val);
            values.put(val[0].substring(1), val[1]);
        }

    }

    public static ArgsName of(String[] args) {
        if (args == null) {
            throw new IllegalArgumentException("The array of strings is empty");
        }
        ArgsName names = new ArgsName();
        names.parse(args);
        return names;
    }

    public static void main(String[] args) {
        ArgsName jvm = ArgsName.of(new String[] {"-Xmx=512", "-encoding=UTF-8"});
        System.out.println(jvm.get("Xmx"));

        ArgsName zip = ArgsName.of(new String[] {"-out=project.zip", "-encoding=UTF-8"});
        System.out.println(zip.get("out"));
    }
}
