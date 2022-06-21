package ru.job4j.generics;

import org.junit.Assert;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

public class RoleStoreTest {

    @Test
    public void whenAddAndFindThenRoleNameIsCashier() {
        RoleStore store = new RoleStore();
        store.add(new Role("1", "cashier"));
        Role result = store.findById("1");
        assertThat(result.getRoleName(), is("cashier"));
    }

    @Test
    public void whenAddAndFindThenRoleIsNull() {
        RoleStore store = new RoleStore();
        store.add(new Role("1", "cashier"));
        Role result = store.findById("10");
        assertNull(result);
    }

    @Test
    public void whenAddDuplicateAndFindRoleNameIsCashier() {
        RoleStore store = new RoleStore();
        store.add(new Role("1", "cashier"));
        store.add(new Role("1", "manager"));
        Role result = store.findById("1");
        assertThat(result.getRoleName(), is("cashier"));
    }

    @Test
    public void whenReplaceThenRoleNameIsManager() {
        RoleStore store = new RoleStore();
        store.add(new Role("1", "cashier"));
        store.replace("1", new Role("1", "manager"));
        Role result = store.findById("1");
        assertThat(result.getRoleName(), is("manager"));
    }

    @Test
    public void whenNoReplaceRoleThenNoChangeRoleName() {
        RoleStore store = new RoleStore();
        store.add(new Role("1", "cashier"));
        store.replace("10", new Role("10", "manager"));
        Role result = store.findById("1");
        assertThat(result.getRoleName(), is("cashier"));
    }

    @Test
    public void whenDeleteRoleThenRoleIsNull() {
        RoleStore store = new RoleStore();
        store.add(new Role("1", "cashier"));
        store.delete("1");
        Role result = store.findById("1");
        assertNull(result);
    }

    @Test
    public void whenNoDeleteRoleThenRoleNameIsCashier() {
        RoleStore store = new RoleStore();
        store.add(new Role("1", "cashier"));
        store.delete("10");
        Role result = store.findById("1");
        assertThat(result.getRoleName(), is("cashier"));
    }
}