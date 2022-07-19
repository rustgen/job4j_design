package ru.job4j.io;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UsageLog4j {

    private static final Logger LOG = LoggerFactory.getLogger(UsageLog4j.class.getName());

    public static void main(String[] args) {
        String name = "Tony";
        byte age = 48;
        short month = 6;
        int year = 1973;
        char gender = 'M';
        long number = 3234437586L;
        float height = 5.7f;
        double weight = 124.7;
        boolean exist = false;
        LOG.debug("User info name : {}, age : {}, month : {}, year : {}, gender : {}, number : {}, "
                + "height : {}, weight : {}, exist : {}.", name, age, month, year, gender,
                number, height, weight, exist);
    }
}
