package ru.job4j.serialization.json;

import java.util.Arrays;

public class Cat {

    private final boolean homePet;
    private final int paws;
    private final String breed;
    private final Animal animal;
    private final String[] characters;

    public Cat(boolean homePet, int paws, String breed, Animal animal, String[] characters) {
        this.homePet = homePet;
        this.paws = paws;
        this.breed = breed;
        this.animal = animal;
        this.characters = characters;
    }

    @Override
    public String toString() {
        return "Cat{"
               + "homePet=" + homePet
               + ", paws=" + paws
               + ", breed='" + breed + '\''
               + ", animal=" + animal
               + ", characters=" + Arrays.toString(characters)
               + '}';
    }
}
