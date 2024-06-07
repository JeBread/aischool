package 일차원배열;

public class Ex02배열 {

   public static void main(String[] args) {

      // 배열을 임의의 값으로 초기화
      // 3, 7, 18, 71, 9, 12, 24
      // (1차원 정수형 배열 - arr)
      
      // 배열의 값 중 홀수인 값이 몇 개인지 출력하는 프로그램을 작성하세요.
      
      int[] arr = {3, 7, 18, 71, 9, 12, 24};
      // arr 배열은 정수형 데이터를 저장하고 크기가 7인 배열
      
      // 홀수의 개수를 저장하는 변수
      int cnt = 0;
      
      System.out.print("array에 들어있는 홀수는 ");
      for(int i = 0; i < arr.length; i++) {
         if(arr[i] % 2 == 1) {
            // 홀수임
            System.out.print(arr[i]+" ");
            cnt++;
         }
      }
      System.out.println("이며,");
      System.out.println("총 "+ cnt+"개 입니다.");
      
      
      
      
      
   }

}
