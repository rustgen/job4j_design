package ru.job4j.io;

import org.hamcrest.Matchers;
import org.junit.Test;
import static org.hamcrest.Matchers.is;
import static org.junit.Assert.assertThat;

public class ConfigTest {

    @Test
    public void whenPairWithoutComment() {
        String path = "./data/app.properties";
        Config config = new Config(path);
        config.load();
        assertThat(config.value("name"), is("Petr"));
        assertThat(config.value("surname"), is(Matchers.nullValue()));
        assertThat(config.value("person"), is("Michael="));
        assertThat(config.value("fuel"), is("consumption=34=mpg"));
    }

    @Test
    public void whenPairContainsCommentAndEmptyLines() {
        String path = "./data/app1.properties";
        Config config = new Config(path);
        config.load();
        assertThat(config.value("name"), is("Boris"));
        assertThat(config.value("person"), is("Frenchie="));
        assertThat(config.value("surname="), is(Matchers.nullValue()));
    }

    @Test (expected = IllegalArgumentException.class)
    public void whenPairWithoutKey() {
        String path = "./data/appEx.properties";
        Config config = new Config(path);
        config.load();
    }

    @Test (expected = IllegalArgumentException.class)
    public void whenPairWithoutValue() {
        String path = "./data/appEx1.properties";
        Config config = new Config(path);
        config.load();
    }

    @Test (expected = IllegalArgumentException.class)
    public void whenPairWithoutKeyAndValue() {
        String path = "./data/appEx2.properties";
        Config config = new Config(path);
        config.load();
    }

    @Test (expected = IllegalArgumentException.class)
    public void whenPairWithoutSplitSign() {
        String path = "./data/appEx3.properties";
        Config config = new Config(path);
        config.load();
    }
}
