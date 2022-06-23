package ru.job4j.collection;


import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public class SimpleLinkedList<E> implements LinkedList<E> {

    private Node<E> first;
    private Node<E> last;
    private int modCount;
    private int size;

    private static class Node<E> {
        private E data;
        private Node<E> next;

        public Node(E data, Node<E> next) {
            this.data = data;
            this.next = next;
        }
    }

    @Override
    public void add(E value) {
        Node<E> node = new Node<>(value, null);
        if (first == null) {
            first = node;
        } else {
            last.next = node;
        }
        last = node;
        size++;
        modCount++;
    }

    @Override
    public E get(int index) {
        Objects.checkIndex(index, size);
        Node<E> node = first;
        for (int i = 0; i < size; i++) {
            if (i == index) {
                break;
            }
            node = node.next;
        }
        return node.data;
    }

    @Override
    public Iterator<E> iterator() {
        return new Iterator<E>() {

            final int expectedModCount = modCount;
            private Node<E> index = first;

            @Override
            public boolean hasNext() {
                if (expectedModCount != modCount) {
                    throw new ConcurrentModificationException();
                }
                return index != null;
            }

            @Override
            public E next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                E val = index.data;
                index = index.next;
                return val;
            }
        };
    }
}
