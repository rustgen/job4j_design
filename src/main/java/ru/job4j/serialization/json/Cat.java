package ru.job4j.serialization.json;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.annotation.*;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Arrays;

@XmlRootElement(name = "cat")
@XmlAccessorType(XmlAccessType.FIELD)
public class Cat {

    @XmlAttribute
    private boolean homePet;

    @XmlAttribute
    private int paws;

    @XmlAttribute
    private String breed;
    private Animal animal;

    @XmlElementWrapper(name = "characters")
    @XmlElement(name = "character")
    private String[] characters;

    public Cat() {

    }

    public Cat(boolean homePet, int paws, String breed, Animal animal, String[] characters) {
        this.homePet = homePet;
        this.paws = paws;
        this.breed = breed;
        this.animal = animal;
        this.characters = characters;
    }

    public boolean isHomePet() {
        return homePet;
    }

    public int getPaws() {
        return paws;
    }

    public String getBreed() {
        return breed;
    }

    public Animal getAnimal() {
        return animal;
    }

    public String[] getCharacters() {
        return characters;
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

    public static void main(String[] args) throws Exception {

        final Cat cat = new Cat(true, 4, "British",
                new Animal("cat"), new String[] {"always eats", "always sleeps"});

        /* Get the context for accessing the API */
        JAXBContext context = JAXBContext.newInstance(Cat.class);
        /* Create a serializer */
        Marshaller marshaller = context.createMarshaller();
        /* Indicate that we need formatting */
        marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);

        String xml = "";
        try (StringWriter writer = new StringWriter()) {
            /* Serialize */
            marshaller.marshal(cat, writer);
            xml = writer.getBuffer().toString();
            System.out.println(xml);
        }

        /* Create a deserializer for deserialization */
        Unmarshaller unmarshaller = context.createUnmarshaller();
        try (StringReader reader = new StringReader(xml)) {
            /* deserialize */
            Cat result = (Cat) unmarshaller.unmarshal(reader);
            System.out.println(result);
        }
    }
}
