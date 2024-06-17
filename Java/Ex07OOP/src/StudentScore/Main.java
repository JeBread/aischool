package StudentScore;

import java.util.Scanner;

public class Main {

   public static void main(String[] args) {
      
      Scanner sc = new Scanner(System.in);
      
      StudentScore[] score = new StudentScore[3];
      
      for(int i = 0; i < score.length; i++) {
         System.out.print(i+1+"번쨰 학생의 이름을 입력 >> ");
         String name = sc.next();
         System.out.print(i+1+"번째 학생의 java점수 입력 >> ");
         int java = sc.nextInt();
         System.out.print(i+1+"번째 학생의 web점수 입력 >> ");
         int web = sc.nextInt();
         System.out.print(i+1+"번째 학생의 android점수 입력 >> ");
         int android = sc.nextInt();
         
         StudentScore stu = new StudentScore(name, java, web, android);
         score[i] = stu;
      }
      
      for(int i = 0; i < score.length; i++) {
         int sum = score[i].getScoreAndroid()+
               score[i].getScoreJava()+
               score[i].getScoreWeb();
         System.out.println(score[i].getName()+"님의 총점은"
               +sum+"점 이고, 평균은 "+sum/3+"점 입니다");
      }
      
      
   }
}
