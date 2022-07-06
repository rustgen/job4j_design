package ru.job4j.question;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class Analize {

    public static Info diff(Set<User> previous, Set<User> current) {
        Map<Integer, String> map = previous.stream().collect(Collectors.toMap(User::getId, User::getName));
        int add = 0;
        int change = 0;

        for (User user : current) {
            if (!map.containsKey(user.getId())) {
                add++;
            } else if (!map.get(user.getId()).equals(user.getName())) {
                change++;
            }
        }
        int delete = previous.size() + add - current.size();
        return new Info(add, change, delete);
    }
}
