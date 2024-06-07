package 일차원배열;

public class Ex03배열 {

   public static void main(String[] args) {

      // arr 배열에서 최대값과 최소값을 구해보자
      // int i = 0;
      int[] arr = {23,45,95,17,6,89,47,56,68,71};
      // arr.length : 10
      // index : 0 ~ 9
      
      // 최대값/최소값이 저장될 수 있는 변수
      int max = arr[0];
      int min = arr[0];
      
      
      for(int i = 0; i < arr.length; i++) {
         // i : 0 1 2 3 4 5 6 7 8 9
         if(max < arr[i]) {
            max = arr[i];
         }
      }
      
      for(int i = 0; i < arr.length; i++) {
         // i : 0 1 2 3 4 5 6 7 8 9
         if(min > arr[i]) {
            min = arr[i];
         }
      }
      
      // - {} scope(영역)
      // - 지역변수 : 특정 구역에서만 사용할 수 있도록 선언 및 초기화
      // - 전역변수
      
      System.out.println("최대값 : "+max);
      System.out.println("최소값 : "+min);
      

   }

}
