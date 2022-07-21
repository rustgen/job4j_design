package ru.job4j.serialization.json;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class JsonPojo {
    public static void main(String[] args) {

        /* JSONObject from json string */
        JSONObject jsonAnimal = new JSONObject("{\"kind\":\"cat\"}");

        /* JSONArray from ArrayList */
        List<String> list = new ArrayList<>();
        list.add("always eats");
        list.add("always sleeps");
        JSONArray jsonCharacters = new JSONArray(list);

        /* JSONObject directly by put method */
        final Cat cat = new Cat(true, 4, "British",
                new Animal("cat"), new String[] {"always eat", "always sleep"});
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("homePet", cat.isHomePet());
        jsonObject.put("paws", cat.getPaws());
        jsonObject.put("breed", cat.getBreed());
        jsonObject.put("animal", jsonAnimal);
        jsonObject.put("characters", jsonCharacters);

        /* Print the result to the console */
        System.out.println(jsonObject.toString());

        /* Convert the cat object to a json string */
        System.out.println(new JSONObject(cat).toString());
    }
}
