package ru.job4j.iterator;

import static org.hamcrest.Matchers.is;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.assertThat;

public class ListUtilsTest {

    @Test
    public void whenAddBefore() {
        List<Integer> input = new ArrayList<>(Arrays.asList(1, 3));
        ListUtils.addBefore(input, 1, 2);
        assertThat(input, is(Arrays.asList(1, 2, 3)));
    }

    @Test(expected = IndexOutOfBoundsException.class)
    public void whenAddBeforeWithInvalidIndex() {
        List<Integer> input = new ArrayList<>(Arrays.asList(1, 3));
        ListUtils.addBefore(input, 3, 2);
    }

    @Test
    public void whenAddAfterLast() {
        List<Integer> input = new ArrayList<>(Arrays.asList(0, 1, 2));
        ListUtils.addAfter(input, 2, 3);
        assertThat(input, is(Arrays.asList(0, 1, 2, 3)));
    }

    @Test
    public void whenRemomeIf() {
        List<Integer> input = new ArrayList<>(Arrays.asList(0, 1, 2, 3, 4, 5, 6, 7, 8));
        ListUtils.removeIf(input, num -> num % 2 == 0);
        assertThat(input, is(Arrays.asList(1, 3, 5, 7)));
    }

    @Test
    public void whenReplaceIf() {
        List<Integer> input = new ArrayList<>(Arrays.asList(0, 1, 2, 5, 4, 5, 6, 5, 8));
        ListUtils.replaceIf(input, num -> num == 5, 21);
        assertThat(input, is(Arrays.asList(0, 1, 2, 21, 4, 21, 6, 21, 8)));
    }

    @Test
    public void whenRemoveAll() {
        List<Integer> input = new ArrayList<>(Arrays.asList(0, 1, 2, 3, 4, 5, 6, 5, 8));
        List<Integer> delete = new ArrayList<>(Arrays.asList(0, 11, 2, 52, 4, 44, 6, 5, 8));
        ListUtils.removeAll(input, delete);
        assertThat(input, is(Arrays.asList(1, 3)));
    }
}