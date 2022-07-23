package ru.job4j.searchfiles;

import java.util.HashMap;
import java.util.Map;

public class ArgsName {

    private final Map<String, String> values = new HashMap<>();

    public String get(String key) {
        if (!values.containsKey(key)) {
            throw new IllegalArgumentException(
                    String.format("The required \"%s\" as a key doesn't exist", key));
        }
        return values.get(key);
    }

    private void check(String[] values, String str) {
        if (values.length < 2 || values[0].isEmpty() || values[1].isEmpty()
            || !values[0].startsWith("-") || values[0].length() < 2) {
            throw new IllegalArgumentException(String.format(
                    "This String \"%s\" with parameters can't pass the format \"-key=value\".", str
            ));
        }
    }

    private void parse(String[] args) {
        for (String str : args) {
            String[] val = str.split("=", 2);
            check(val, str);
            values.put(val[0].substring(1), val[1]);
        }
    }

    public static ArgsName of(String[] args) {
        if (args.length == 0) {
            throw new IllegalArgumentException("The array of Args is empty");
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
