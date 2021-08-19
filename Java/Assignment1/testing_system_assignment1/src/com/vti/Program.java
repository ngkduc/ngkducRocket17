package com.vti;

import java.util.Date;

public class Program {
    public static void main(String[] args) {
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

        System.out.println("Đã nhập dữ liệu department");

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

        System.out.println("Đã nhập dữ liệu position");

        Account Account1 = new Account();
        Account1.id = 1;
        Account1.email = "ngkduc@gmail.com";
        Account1.username = "ngkduc";
        Account1.fullName = "Nguyễn Khương Đức ";
        Account1.department_Id = department1;
        Account1.position_Id = position1;
        Account1.createDate = new Date(2020,8,19);

        Account Account2 = new Account();
        Account2.id = 2;
        Account2.email = "btanh@gmail.com";
        Account2.username = "btanh";
        Account2.fullName = "Bùi Thế Anh ";
        Account2.department_Id = department2;
        Account2.position_Id = position2;
        Account2.createDate = new Date(2020,8,19);

        Account Account3 = new Account();
        Account3.id = 3;
        Account3.email = "dthoang@gmail.com";
        Account3.username = "dthoang";
        Account3.fullName = "Đinh Tuấn Hoàng ";
        Account3.department_Id = department3;
        Account3.position_Id = position3;
        Account3.createDate = new Date(2020,8,19);

        System.out.println("Đã nhập dữ liệu Account");

        Group group1 = new Group();
        group1.id = 1;
        group1.name = "MATH ERROR";
        group1.creatorId = Account1;
        group1.createDate = new Date(2021,7,13);

        Group group2 = new Group();
        group2.id = 2;
        group2.name = "HELLO KITTY";
        group2.creatorId = Account1;
        group2.createDate = new Date(2021,7,13);

        Group group3 = new Group();
        group3.id = 3;
        group3.name = "JERRY";
        group3.creatorId = Account1;
        group3.createDate = new Date(2021,7,13);

        Group group4 = new Group();
        group4.id = 4;
        group4.name = "MATH ERROR";
        group4.creatorId = Account1;
        group4.createDate = new Date(2021,7,13);

        System.out.println("Đã nhập dữ liệu group");

        GroupAccount groupAccount1 = new GroupAccount();
        groupAccount1.id = group1;
        groupAccount1.accountId = Account1;
        groupAccount1.joinDate = new Date(2020,7,13);

        GroupAccount groupAccount2 = new GroupAccount();
        groupAccount2.id = group2;
        groupAccount2.accountId = Account2;
        groupAccount2.joinDate = new Date(2020,7,14);

        GroupAccount groupAccount3 = new GroupAccount();
        groupAccount3.id = group3;
        groupAccount3.accountId = Account3;
        groupAccount3.joinDate = new Date(2020,7,15);

        System.out.println("Đã nhập dữ liệu GroupAccount");

        TypeQuestion typeQuestion1 = new TypeQuestion();
        typeQuestion1.id = 1;
        typeQuestion1.typeName = TypeName.ESSAY;

        TypeQuestion typeQuestion2 = new TypeQuestion();
        typeQuestion2.id = 2;
        typeQuestion2.typeName = TypeName.MULTIPLE_CHOICE;

        System.out.println("Đã nhập dữ liệu TypeQuestion");

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

        System.out.println("Đã nhập dữ liệu CategoryQuestion");

        Question question1 = new Question();
        question1.id = 1;
        question1.content = "Câu hỏi 1 ";
        question1.categoryId = categoryQuestion1;
        question1.typeId = typeQuestion1;
        question1.creatorId = Account1;
        question1.createDate = new Date(2020,9,10);

        Question question2 = new Question();
        question2.id = 2;
        question2.content = "Câu hỏi 2 ";
        question2.categoryId = categoryQuestion2;
        question2.typeId = typeQuestion2;
        question2.creatorId = Account1;
        question2.createDate = new Date(2020,9,10);

        Question question3 = new Question();
        question3.id = 3;
        question3.content = "Câu hỏi 3 ";
        question3.categoryId = categoryQuestion3;
        question3.typeId = typeQuestion1;
        question3.creatorId = Account1;
        question3.createDate = new Date(2020,9,10);

        Question question4 = new Question();
        question4.id = 4;
        question4.content = "Câu hỏi 4 ";
        question4.categoryId = categoryQuestion4;
        question4.typeId = typeQuestion2;
        question4.creatorId = Account1;
        question4.createDate = new Date(2020,9,10);

        System.out.println("Đã nhập dữ liệu Question");


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

        System.out.println("Đã nhập dữ liệu answer");

        Exam exam1 = new Exam();
        exam1.id = 1;
        exam1.code = "COD1";
        exam1.title = "Đề thi Java";
        exam1.categoryId = categoryQuestion1;
        exam1.duration = 60;
        exam1.creatorId = Account1;
        exam1.createDate = new Date(2020,12,12);

        Exam exam2 = new Exam();
        exam2.id = 2;
        exam2.code = "COD2";
        exam2.title = "Đề thi .NET";
        exam2.categoryId = categoryQuestion2;
        exam2.duration = 90;
        exam2.creatorId = Account1;
        exam2.createDate = new Date(2020,12,12);

        Exam exam3 = new Exam();
        exam3.id = 3;
        exam3.code = "COD3";
        exam3.title = "Đề thi SQL";
        exam3.categoryId = categoryQuestion3;
        exam3.duration = 120;
        exam3.creatorId = Account1;
        exam3.createDate = new Date(2020,12,12);

        Exam exam4 = new Exam();
        exam4.id = 4;
        exam4.code = "COD4";
        exam4.title = "Đề thi RUBY";
        exam4.categoryId = categoryQuestion1;
        exam4.duration = 60;
        exam4.creatorId = Account1;
        exam4.createDate = new Date(2020,12,12);

        System.out.println("Đã nhập dữ liệu Exam");

        ExamQuestion examQuestion1 = new ExamQuestion();
        examQuestion1.examId = exam1;
        examQuestion1.questionId = question1;

        ExamQuestion examQuestion2 = new ExamQuestion();
        examQuestion2.examId = exam2;
        examQuestion2.questionId = question2;

        ExamQuestion examQuestion3 = new ExamQuestion();
        examQuestion3.examId = exam3;
        examQuestion3.questionId = question3;

        ExamQuestion examQuestion4 = new ExamQuestion();
        examQuestion4.examId = exam4;
        examQuestion4.questionId = question4;

        System.out.println("Đã nhập dữ liệu ExamQuestion");




    }
}
