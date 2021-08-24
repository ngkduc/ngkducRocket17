package com.vti;

import java.util.Random;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
//ex1();
//ex2();
        ex3();
    }

    public static void ex1() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhập question cần làm : ");
        int i = scanner.nextInt();
        switch (i) {
            case 1:
                double a = 5240.5;
                double b = 10970.55;
                int aa = (int) a;
                int bb = (int) b;
                System.out.println("lương account 1 : " + aa);
                System.out.println("lương account 2 : " + bb);
                break;
            case 2:
                Random random = new Random();
                int x = random.nextInt(100000);
                if (x < 10000)
                    System.out.printf("%05d", x);
                else System.out.printf("%d", x);
                break;
            case 3:
                Random random1 = new Random();
                int y = random1.nextInt(100000);
                System.out.printf("số random là %05d", y);
                System.out.println();
                System.out.println("2 chữ số cuối của số random là   :" + (y % 100));
                break;
            case 4:
                System.out.println("nhập số thứ nhất : ");
                int m = scanner.nextInt();
                System.out.println("nhập số thứ hai : ");
                int n = scanner.nextInt();
                float thuong = (float) m / n;
                System.out.printf("thương = %.5f", thuong);
        }

    }

    public static void ex2() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhập question cần làm : ");
        int i = scanner.nextInt();
        switch (i) {
            case 1:
                Account[] accounts = new Account[5];
                for (int x = 0; x < 5; x++) {
                    accounts[x] = new Account();
                    accounts[x].email = "email " + (x + 1);
                    accounts[x].username = "username " + (x + 1);
                    accounts[x].fullName = "fullname " + (x + 1);
                    accounts[x].createDate = "now";
                }
                for (Account m : accounts) {
                    System.out.println(m.email + " | " + m.username + " | " + m.fullName + " | " + m.createDate);
                }

        }
    }

    public static void ex3() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhập question cần làm : ");
        int i = scanner.nextInt();
        switch (i) {
            case 1:
                Integer luong = 5000;
                float l = (float) luong;
                System.out.printf("%.2f", l);
            case 2:
                String s = new String("123456");
                int x = Integer.parseInt(s);
                System.out.println(x);
            case 3:
                Integer xx = new Integer(1234567);
                int x1 = xx.intValue();
                System.out.println(x1);
        }
    }

    public static void ex4() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhập question cần làm : ");
        int i = scanner.nextInt();
        switch (i) {
            case 1:

        }
    }
}