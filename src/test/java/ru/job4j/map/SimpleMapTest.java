package ru.job4j.map;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import ru.job4j.collection.SimpleArrayList;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

public class SimpleMapTest {

    SimpleMap<Integer, String> map;

    @Before
    public void initData() {
        map = new SimpleMap<>();
        map.put(1, "one");
        map.put(2, "two");
        map.put(3, "three");
        map.put(4, "four");
        map.put(5, "five");
    }

    @Test
    public void whenPutToHashMap() {
        Assert.assertTrue(map.put(6, "six"));
        Assert.assertThat(map.get(1), is("one"));
    }

    @Test
    public void whenPutToHashMapSameKeyWithOtherValue() {
        Assert.assertTrue(map.put(7, "seven"));
        Assert.assertFalse(map.put(7, "7"));
        Assert.assertThat(map.get(7), is("seven"));
    }

    @Test
    public void whenGetIsTrue() {
        Assert.assertThat(map.get(2), is("two"));
        Assert.assertThat(map.get(5), is("five"));
    }

    @Test
    public void whenGetIsFalse() {
        Assert.assertNotEquals("2", map.get(2));
        Assert.assertNotEquals(map.get(3), "five");
    }

    @Test
    public void whenRemoveIsTrue() {
        map.put(9, "nine");
        Assert.assertTrue(map.remove(9));
        Assert.assertNull(map.get(9));
    }

    @Test
    public void whenRemoveIsFalse() {
        map.put(9, "nine");
        Assert.assertFalse(map.remove(12));
    }
}