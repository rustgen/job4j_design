package ru.job4j.collection;

import java.util.*;

public class SimpleArrayList<T> implements SimpleList<T> {

    private T[] container;
    private int size;
    private int modCount;

    public SimpleArrayList(int capacity) {
        this.container = (T[]) new Object[capacity];
    }
    @Override
    public void add(T value) {
        if (size == container.length) {
            Arrays.copyOf(container, container.length * 2);
        }
        container[size] = value;
        size++;
        modCount++;
    }

    @Override
    public T set(int index, T newValue) {
        Objects.checkIndex(index, size);
        for (int i = 0; i < container.length; i++) {
            if (i == index) {
                container[i] = newValue;
                break;
            }
        }
        return container[index];
    }

    @Override
    public T remove(int index) {
        Objects.checkIndex(index, size);
        System.arraycopy(container, index + 1, container, index, container.length - index - 1);
        modCount++;
        return (T) container;
    }

    @Override
    public T get(int index) {
        Objects.checkIndex(index, size);
        return container[index];
    }

    @Override
    public int size() {
        return container.length;
    }

    @Override
    public Iterator<T> iterator() {
        return new Iterator<T>() {

            final int expectedModCount = modCount;

            @Override
            public boolean hasNext() {
                if (expectedModCount != modCount) {
                    throw new ConcurrentModificationException();
                }
                return false;
            }

            @Override
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                modCount++;
                return container[size++];
            }
        };
    }
}
