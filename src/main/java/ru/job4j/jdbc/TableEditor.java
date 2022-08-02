package ru.job4j.jdbc;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
import java.util.StringJoiner;

public class TableEditor implements AutoCloseable {

    private Connection connection;

    private Properties properties;

    public TableEditor(Properties properties) throws Exception {
        this.properties = properties;
        initConnection();
    }

    private void initConnection() throws Exception {
        Class.forName(properties.getProperty("hibernate.connection.driver_class"));
        String url = properties.getProperty("hibernate.connection.url");
        String login = properties.getProperty("hibernate.connection.username");
        String password = properties.getProperty("hibernate.connection.password");
        connection = DriverManager.getConnection(url, login, password);
    }

    public void statement(String sql) throws Exception {
        try (Statement statement = connection.createStatement()) {
            statement.execute(sql);
        }
    }

    public void createTable(String tableName) throws Exception {
        String sql = String.format(
                "create table if not exists %s();", tableName
        );
        statement(sql);
        System.out.println(getTableScheme(connection, tableName));
    }

    public void dropTable(String tableName) throws Exception {
        String sql = String.format(
                "drop table if exists %s;", tableName
        );
        statement(sql);
    }

    public void addColumn(String tableName, String columnName, String type) throws Exception {
        String sql = String.format(
                "ALTER TABLE %s ADD COLUMN %s %s;", tableName, columnName, type
        );
        statement(sql);
        System.out.println(getTableScheme(connection, tableName));
    }

    public void dropColumn(String tableName, String columnName) throws Exception {
        String sql = String.format(
                "ALTER TABLE %s DROP COLUMN %s;", tableName, columnName
        );
        statement(sql);
        System.out.println(getTableScheme(connection, tableName));
    }

    public void renameColumn(String tableName, String columnName, String newColumnName) throws Exception {
        String sql = String.format(
                "ALTER TABLE %s RENAME COLUMN %s TO %s;", tableName, columnName, newColumnName
        );
        statement(sql);
        System.out.println(getTableScheme(connection, tableName));
    }


    public static String getTableScheme(Connection connection, String tableName) throws Exception {
        var rowSeparator = "-".repeat(30).concat(System.lineSeparator());
        var header = String.format("%-15s|%-15s%n", "NAME", "TYPE");
        var buffer = new StringJoiner(rowSeparator, rowSeparator, rowSeparator);
        buffer.add(header);
        try (var statement = connection.createStatement()) {
            var selection = statement.executeQuery(String.format(
                    "select * from %s limit 1", tableName
            ));
            var metaData = selection.getMetaData();
            for (int i = 1; i <= metaData.getColumnCount(); i++) {
                buffer.add(String.format("%-15s|%-15s%n",
                        metaData.getColumnName(i), metaData.getColumnTypeName(i))
                );
            }
        }
        return buffer.toString();
    }

    @Override
    public void close() throws Exception {
        if (connection != null) {
            connection.close();
        }
    }

    public static void main(String[] args) throws Exception {
        Properties properties = new Properties();
        try (InputStream in =
                     TableEditor.class.getClassLoader().getResourceAsStream("app.properties")) {
            properties.load(in);
        }

        try (TableEditor editor = new TableEditor(properties)) {
            editor.createTable("demo_table");
            editor.addColumn("demo_table", "id", "INT");
            editor.addColumn("demo_table", "namee", "varchar(255)");
            editor.renameColumn("demo_table", "namee", "name");
            editor.dropColumn("demo_table", "name");
            editor.dropTable("demo_table");
        }
    }
}
