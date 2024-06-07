package 일차원배열;

import java.util.Scanner;

public class Ex05배열 {

   public static void main(String[] args) {

      // 입력하는 기능 가져오기
      Scanner sc = new Scanner(System.in);
      
      // 배열 선언 및 생성
      int[] arr = new int[10];
      
      // 사용자가 입력한 값으로 각각의 인덱스 초기화
      for(int i = 0; i < arr.length; i++) {
         // i : 0 1 2 3 4 5 6 7 8 9
         System.out.print(i+1+"번째 정수 입력 >> ");
         arr[i] = sc.nextInt();
      }
      System.out.print("3의 배수 : ");
      for(int i = 0; i < arr.length; i++) {
         if(arr[i] % 3 == 0) {
            System.out.print(arr[i]+" ");
         }
      }
      
      
      
      
      
      
      
      
      
      
      
   }

}
