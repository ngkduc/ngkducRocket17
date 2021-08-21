package com.vti;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Scanner;
import java.util.logging.SimpleFormatter;

public class Program {

    public static void main(String[] args) throws ParseException {
        department department1 = new department();
        department1.id = 1;
        department1.name = "Sales";

        department department2 = new department();
        department2.id = 2;
        department2.name = "Marketing";

        department department3 = new department();
        department3.id = 3;
        department3.name = "Kế Toán";

        department department4 = new department();
        department4.id = 3;
        department4.name = "CEO";

        department[] departments = {department1, department2, department3, department4};


        position position1 = new position();
        position1.id = 1;
        position1.positionName = PositionName.DEV;

        position position2 = new position();
        position2.id = 2;
        position2.positionName = PositionName.TEST;

        position position3 = new position();
        position3.id = 3;
        position3.positionName = PositionName.PM;

        position position4 = new position();
        position4.id = 4;
        position4.positionName = PositionName.SCRUM_MASTER;


        Account Account1 = new Account();
        Account1.id = 1;
        Account1.email = "ngkduc@gmail.com";
        Account1.username = "ngkduc";
        Account1.fullName = "Nguyễn Khương Đức ";
        Account1.department_Id = department1;
        Account1.position_Id = position1;
        Account1.createDate = new Date(2020, 8, 19);

        Account Account2 = new Account();
        Account2.id = 2;
        Account2.email = "btanh@gmail.com";
        Account2.username = "btanh";
        Account2.fullName = "Bùi Thế Anh ";
        Account2.department_Id = department2;
        Account2.position_Id = position2;
        Account2.createDate = new Date(2020, 8, 19);

        Account Account3 = new Account();
        Account3.id = 3;
        Account3.email = "dthoang@gmail.com";
        Account3.username = "dthoang";
        Account3.fullName = "Đinh Tuấn Hoàng ";
        Account3.department_Id = department3;
        Account3.position_Id = position3;
        Account3.createDate = new Date(2020, 8, 19);

        Account[] accounts = {Account1, Account2, Account3};

        Group group1 = new Group();
        group1.id = 1;
        group1.name = "MATH ERROR";
        group1.createDate = new Date(2021, 7, 13);

        Group group2 = new Group();
        group2.id = 2;
        group2.name = "HELLO KITTY";
        group2.createDate = new Date(2021, 7, 13);

        Group group3 = new Group();
        group3.id = 3;
        group3.name = "JERRY";
        group3.createDate = new Date(2021, 7, 13);

        Group group4 = new Group();
        group4.id = 4;
        group4.name = "MATH ERROR";
        group4.createDate = new Date(2021, 7, 13);

        Group[] groupOfAccount1 = {group1};
        Account1.groups = groupOfAccount1;

        Group[] groupOfAccount2 = {group3};
        Account2.groups = groupOfAccount2;

        Group[] groupOfAccount3 = {group1};
        Account3.groups = groupOfAccount3;

        // add account to group
        Account[] accountOfGroups1 = {Account1, Account2, Account3};
        group1.accounts = accountOfGroups1;

        TypeQuestion typeQuestion1 = new TypeQuestion();
        typeQuestion1.id = 1;
        typeQuestion1.typeName = TypeName.ESSAY;

        TypeQuestion typeQuestion2 = new TypeQuestion();
        typeQuestion2.id = 2;
        typeQuestion2.typeName = TypeName.MULTIPLE_CHOICE;


        CategoryQuestion categoryQuestion1 = new CategoryQuestion();
        categoryQuestion1.id = 1;
        categoryQuestion1.categoryName = "Java";

        CategoryQuestion categoryQuestion2 = new CategoryQuestion();
        categoryQuestion2.id = 2;
        categoryQuestion2.categoryName = ".NET";

        CategoryQuestion categoryQuestion3 = new CategoryQuestion();
        categoryQuestion3.id = 3;
        categoryQuestion3.categoryName = "SQL";

        CategoryQuestion categoryQuestion4 = new CategoryQuestion();
        categoryQuestion4.id = 4;
        categoryQuestion4.categoryName = "RUBY";


        Question question1 = new Question();
        question1.id = 1;
        question1.content = "Câu hỏi 1 ";
        question1.categoryId = categoryQuestion1;
        question1.typeId = typeQuestion1;
        question1.creatorId = Account1;
        question1.createDate = new Date(2020, 9, 10);

        Question question2 = new Question();
        question2.id = 2;
        question2.content = "Câu hỏi 2 ";
        question2.categoryId = categoryQuestion2;
        question2.typeId = typeQuestion2;
        question2.creatorId = Account1;
        question2.createDate = new Date(2020, 9, 10);

        Question question3 = new Question();
        question3.id = 3;
        question3.content = "Câu hỏi 3 ";
        question3.categoryId = categoryQuestion3;
        question3.typeId = typeQuestion1;
        question3.creatorId = Account1;
        question3.createDate = new Date(2020, 9, 10);

        Question question4 = new Question();
        question4.id = 4;
        question4.content = "Câu hỏi 4 ";
        question4.categoryId = categoryQuestion4;
        question4.typeId = typeQuestion2;
        question4.creatorId = Account1;
        question4.createDate = new Date(2020, 9, 10);

        Answer answer1 = new Answer();
        answer1.id = 1;
        answer1.content = "Câu trả lời 1";
        answer1.questionId = question1;
        answer1.isCorrect = true;

        Answer answer2 = new Answer();
        answer2.id = 2;
        answer2.content = "Câu trả lời 2";
        answer2.questionId = question2;
        answer2.isCorrect = true;

        Answer answer3 = new Answer();
        answer3.id = 3;
        answer3.content = "Câu trả lời 3";
        answer3.questionId = question3;
        answer3.isCorrect = false;

        Answer answer4 = new Answer();
        answer4.id = 4;
        answer4.content = "Câu trả lời 4";
        answer4.questionId = question4;
        answer4.isCorrect = false;


        Exam exam1 = new Exam();
        exam1.id = 1;
        exam1.code = "COD1";
        exam1.title = "Đề thi Java";
        exam1.categoryId = categoryQuestion1;
        exam1.duration = 60;
        exam1.creatorId = Account1;
        exam1.createDate = new Date(2020, 12, 12);

        Exam exam2 = new Exam();
        exam2.id = 2;
        exam2.code = "COD2";
        exam2.title = "Đề thi .NET";
        exam2.categoryId = categoryQuestion2;
        exam2.duration = 90;
        exam2.creatorId = Account1;
        exam2.createDate = new Date(2020, 12, 12);

        Exam exam3 = new Exam();
        exam3.id = 3;
        exam3.code = "COD3";
        exam3.title = "Đề thi SQL";
        exam3.categoryId = categoryQuestion3;
        exam3.duration = 120;
        exam3.creatorId = Account1;
        exam3.createDate = new Date(2020, 12, 12);

        Exam exam4 = new Exam();
        exam4.id = 4;
        exam4.code = "COD4";
        exam4.title = "Đề thi RUBY";
        exam4.categoryId = categoryQuestion1;
        exam4.duration = 60;
        exam4.creatorId = Account1;
        exam4.createDate = new Date(2020, 12, 12);


        Question[] questionOfExam1 = {question1, question2};
        exam1.questions = questionOfExam1;

        Question[] questionOfExam2 = {question3};
        exam1.questions = questionOfExam2;


//        question_1(Account2);
//        question_3(Account2);
//        question_4(Account1);
//        question5(group1);
//        question8(accounts);
//        question9(departments);
//        question10(accounts);
//        question11(departments);
//        question13(accounts);
//        question16(accounts);
//        question17(accounts);
        ex2();
    }

    // question 1
    public static void question_1(Account x) {
        if (x.department_Id == null) System.out.println("Nhân viên này chưa có phòng ban");
        else
            System.out.println("Phòng của nhân viên là " + x.department_Id.name);
        System.out.println("question1 done");
    }
    // question 3
    public static void question_3(Account x) {
        System.out.println((x.department_Id == null) ? "Nhân viên này chưa có phòng ban " : "Phòng của nhân viên là " + x.department_Id.name);
        System.out.println("question 3 done");
    }
    // question 4
    public static void question_4(Account x) {
        System.out.println((x.position_Id.positionName == PositionName.DEV) ? "Người này không phải developer" : "Nhân viên này là developer");
        System.out.println("question 4 done");
    }
    // question 5
    public static void question5(Group x) {
        int sltv = x.accounts.length;
        switch (sltv) {
            case 1:
                System.out.println(" nhóm có 1 thành viên ");
                break;
            case 2:
                System.out.println("nhóm có 2 thành viên");
                break;
            case 3:
                System.out.println("nhóm có 3 thành viên");
                break;
            default:
                System.out.println("nhóm có nhiều thành viên ");
        }
        System.out.println("question 5 done");
    }
    // question 8 :In ra thông tin các account bao gồm: Email, FullName và tên phòng ban của họ
    public static void question8(Account[] accounts) {
        for (Account x : accounts) {
            System.out.println(x.email + " | " + x.fullName + " | " + x.department_Id.name);
        }
        System.out.println("question 8 done");
    }
    // question 9:In ra thông tin các phòng ban bao gồm: id và name
    public static void question9(department[] departments) {
        for (department x : departments) {
            System.out.println(x.id + " | " + x.name);
        }
        System.out.println("question 9 done ");
    }
    // question 10 :In ra thông tin các account
    public static void question10(Account[] accounts) {

        for (int i = 0; i < accounts.length; i++) {
            System.out.printf("Thông tin account thứ %d", i+1);
            System.out.println();
            System.out.println("Email : " + accounts[i].email);
            System.out.println("fullName : " + accounts[i].fullName);
            System.out.println("Phòng ban : " + accounts[i].department_Id.name);
            System.out.println("---------------------------------------------");
        }
        System.out.println(" question 10 done ");
    }
    // question 11: in ra thông tin department
    public static void question11(department[] departments){
        for (int i = 0;i<departments.length;i++){
            System.out.printf("thông tin phòng ban thứ %d là : ",i+1);
            System.out.println();
            System.out.println("id : "+departments[i].id);
            System.out.println("Name : "+departments[i].name);
        }
        System.out.println("question 11 done");
    }
    // question 13 : in ra thông tin account trừ account2
    public static void question13(Account[] accounts) {

        for (int i = 0; i < accounts.length; i++) {
            if (i != 1){
                System.out.printf("Thông tin account thứ %d", i+1);
                System.out.println();
                System.out.println("Email : " + accounts[i].email);
                System.out.println("fullName : " + accounts[i].fullName);
                System.out.println("Phòng ban : " + accounts[i].department_Id.name);
                System.out.println("---------------------------------------------");
            }
        }
        System.out.println(" question 13 done ");
    }
    // question 16 :Làm lại các Question ở phần FOR bằng cách sử dụng WHILE kết hợp với lệnh break, continue
    public static void question16(Account[] accounts){
        int i = 0;
        while (i <accounts.length){
            System.out.printf("Thông tin account thứ %d", i+1);
            System.out.println();
            System.out.println("Email : " + accounts[i].email);
            System.out.println("fullName : " + accounts[i].fullName);
            System.out.println("Phòng ban : " + accounts[i].department_Id.name);
            System.out.println("---------------------------------------------");
            i++;
        }
        System.out.println("question 16 done");
    }
    // question 17 : Do-while
    public static void question17(Account[] accounts){
        int i = 0;
        do {
            if(i != 1){
            System.out.printf("Thông tin account thứ %d", i+1);
            System.out.println();
            System.out.println("Email : " + accounts[i].email);
            System.out.println("fullName : " + accounts[i].fullName);
            System.out.println("Phòng ban : " + accounts[i].department_Id.name);
            System.out.println("---------------------------------------------");
            i++;
            }
            else i++;
        }while (i< accounts.length);
    }
    // ex2:
    public static void ex2() throws ParseException {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhập question ");
        int i = scanner.nextInt();
        scanner.nextLine();

        switch (i){
            case 1:
                System.out.println("nhập vào số a : ");
                int a = scanner.nextInt();
                System.out.printf("số bạn vừa nhập là %d ",a);
                break;
            case 2:
                System.out.println("nhập vào số x : ");
                int x = scanner.nextInt();
                System.out.printf(Locale.US,"%,d",x);
                break;
            case 3:
                System.out.println("nhập vào số b : ");
                double b = scanner.nextDouble();
                System.out.printf("%.4f",b);
                break;
            case 4:
                System.out.println("nhập vào tên học sinh: ");
                String name = scanner.nextLine();
                System.out.printf("Tên tôi là \" %s \" và đang độc thân %n",name);
                break;
            case 5:
                System.out.println("nhập vào thời gian ");
                String dateInput = scanner.next();
                String pattern = "dd/MM/yyyy HH:mm:ss";
                SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
                Date date = dateFormat.parse(dateInput);
                System.out.println(date);
                break;
        }
    }
    // ex3: Date format
}
