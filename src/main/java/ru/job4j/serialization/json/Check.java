package ru.job4j.serialization.json;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class Check {
    public static void main(String[] args) {

        final Cat cat = new Cat(true, 4, "British",
                new Animal("cat"), new String[] {"always eat", "always sleep"});

        /* Convert the cat object to json string. */
        final Gson gson = new GsonBuilder().create();
        System.out.println(gson.toJson(cat));

        /* Modify the json string */
        final String catJson = "{"
                    + "\"homePet\":false,"
                    + "\"paws\":4,"
                    + "\"breed\":\"Wild\","
                    + "\"animal\":{\"kind\":\"cat\"},"
                    + "\"characters\":[\"always hunts\",\"lives in streets\"]"
                    + "}";
        final Cat catModify = gson.fromJson(catJson, Cat.class);
        System.out.println(catModify);
    }
}
