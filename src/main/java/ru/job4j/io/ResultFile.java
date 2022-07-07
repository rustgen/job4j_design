package ru.job4j.io;

import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.List;

public class ResultFile {
    public static void main(String[] args) {
        try (FileOutputStream out = new FileOutputStream("result.txt")) {
            int[][] matrix = new int[10][10];
            for (int i = 0; i < matrix.length; i++) {
                for (int j = 0; j < matrix[i].length; j++) {
                    matrix[i][j] = (i + 1) * (j + 1);
                }
            }
            List<int[]> list = Arrays.stream(matrix).toList();
            for (int[] val : list) {
                out.write(Arrays.toString(val)
                        .replace("[", "")
                        .replace("]", "")
                        .replace(",", "")
                        .getBytes());
                out.write(System.lineSeparator().getBytes());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
