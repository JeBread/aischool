package 일차원배열;

import java.util.Scanner;

public class Ex04배열 {

   public static void main(String[] args) {

      Scanner sc = new Scanner(System.in);
      
      // 1) 점수가 저장 될 수 있는 배열 선언 및 생성
      // 크기 : 5, int , score
      int[] score = new int[5];
      
      // score라는 배열에는 현재 0이라는 값만 들어가있는 상태
      
      // 2) score[0] ~ score[4] = sc.nextInt()
      for(int i = 0; i<score.length; i++) {
         System.out.print(i+1+"번째 입력 >>");
         score[i] = sc.nextInt();
      }
      
//      System.out.print("2번째 입력 >>");
//      score[1] = sc.nextInt();

      // 3) 입력된 값을 한 번 출력
      System.out.print("입력된 점수 : ");
      for(int i = 0; i < score.length; i++) {
         System.out.print(score[i]+" ");
      }
      // 4) 최대/최소값 출력
      int max = score[0];
      int min = score[0];
      int sum = 0;
      
      for(int i = 0; i < score.length; i++) {
         if(max < score[i]) {
            max = score[i];
         }
         if(min > score[i]) {
            min = score[i];
         }
         sum += score[i];
      }
      System.out.println(max);
      System.out.println(min);
      System.out.println(sum);
      System.out.println(sum/score.length);
      // 5) 총합, 평균 출력
      
      
      
   }

}
