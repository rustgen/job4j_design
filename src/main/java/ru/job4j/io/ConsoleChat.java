package ru.job4j.io;

import java.io.*;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ConsoleChat {

    private static final String OUT = "out";
    private static final String STOP = "stop";
    private static final String CONTINUE = "continue";
    private final String path;
    private final String botAnswers;


    public ConsoleChat(String path, String botAnswers) {
        this.path = path;
        this.botAnswers = botAnswers;
    }

    public void run() {
        Scanner scanner = new Scanner(System.in);
        String userSay = scanner.nextLine();
        List<String> botAnswers = readPhrases();
        List<String> log = new ArrayList<>();
        int indexAnswers = (int) (Math.random() * botAnswers.size());

        while (!OUT.equals(userSay)) {
                while (!STOP.equals(userSay)) {
                    if (OUT.equals(userSay)) {
                        log.add(userSay);
                        break;
                    }
                    log.add(userSay);
                    log.add(botAnswers.get(indexAnswers));
                    userSay = scanner.nextLine();
                    if (STOP.equals(userSay)) {
                        while (!CONTINUE.equals(userSay)) {
                            log.add(userSay);
                            userSay = scanner.nextLine();
                            if (OUT.equals(userSay)) {
                                break;
                            }
                        }
                    }
                }
                saveLog(log);
        }
    }


    private List<String> readPhrases() {
        List<String> answers = new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader(botAnswers))) {
            br.lines().forEach(answers::add);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return answers;
    }

    private void saveLog(List<String> log) {
        try (PrintWriter pw = new PrintWriter(
                new FileWriter(path, Charset.forName("WINDOWS-1251"), true))) {
            log.forEach(pw::println);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        ConsoleChat cc = new ConsoleChat("/Users/rust/Projects/job4j_design/chat.txt",
                "/Users/rust/Projects/job4j_design/botAnswers.txt");
        cc.run();
    }
}
