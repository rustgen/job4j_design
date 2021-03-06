package ru.job4j.map;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class SimpleMap<K, V> implements Map<K, V> {
    private static final float LOAD_FACTOR = 0.75f;

    private int capacity = 8;

    private int count = 0;

    private int modCount = 0;

    private MapEntry<K, V>[] table = new MapEntry[capacity];

    @Override
    public boolean put(K key, V value) {
        boolean insert = false;
        if (capacity * LOAD_FACTOR >= count) {
            expand();
        }
        int bucket = hash(key.hashCode());
        int index = indexFor(bucket);
        if (table[index] == null) {
            table[index] = new MapEntry<>(key, value);
            count++;
            modCount++;
            insert = true;
        }
        return insert;
    }

    private int hash(int hashCode) {
        int sum = 0;
        int num;
        while (hashCode != 0) {
            num = hashCode % 10;
            sum += num;
            hashCode /= 10;
        }
        return sum % capacity;
    }

    private int indexFor(int hash) {
        return hash & (capacity - 1);
    }

    private void expand() {
        capacity = capacity * 2;
        MapEntry<K, V>[] large = new MapEntry[capacity];
        for (MapEntry entry : table) {
            if (entry != null) {
                int index = indexFor(hash(entry.key.hashCode()));
                large[index] = entry;
            }
        }
        table = large;
    }

    @Override
    public V get(K key) {
        int index = indexFor(hash(key.hashCode()));
        return  (table[index] != null && table[index].key.hashCode()
                == key.hashCode() && table[index].key.equals(key))
                ? table[index].value : null;
    }

    @Override
    public boolean remove(K key) {
        boolean res = false;
        int index = indexFor(hash(key.hashCode()));
        if (table[index] != null && table[index].key.equals(key)) {
            table[index] = null;
            count--;
            modCount++;
            res = true;
        }
        return res;
    }

    @Override
    public Iterator<K> iterator() {
        return new Iterator<K>() {

            final int expectedModCount = modCount;
            int cursor = 0;

            @Override
            public boolean hasNext() {
                if (expectedModCount != modCount) {
                    throw new ConcurrentModificationException();
                }
                while (cursor < capacity && table[cursor] == null) {
                    cursor++;
                }
                return cursor < capacity;
            }

            @Override
            public K next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                return table[cursor++].key;
            }
        };
    }

    private static class MapEntry<K, V> {

        K key;
        V value;

        public MapEntry(K key, V value) {
            this.key = key;
            this.value = value;
        }
    }
}

