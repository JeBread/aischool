package 이중for문;

public class Ex01구구단 {

	public static void main(String[] args) {

		// 2단 ~ 9단 이중 for문을 사용해서 출력
	      
	      // build up!
	      // 2단 for문을 사용해서 출력
	      
	      for(int j = 2; j <= 9; j++) {
	         System.out.print("2단 : ");
	         for(int i = 1; i <= 9; i++) {
	            System.out.print("2*"+i+"="+2*i+" ");
	         }
	         System.out.println();
	      }
	      
	      
	      
	      // 3단 for문을 사용해서 출력
	      System.out.print("3단 : ");
	      for(int i = 1; i <= 9; i++) {
	         System.out.print("3*"+i+"="+3*i+" ");
	      }
	      System.out.println();
	      
	      // 4단 for문을 사용해서 출력
	      System.out.print("4단 : ");
	      for(int i = 1; i <= 9; i++) {
	         System.out.print("4*"+i+"="+4*i+" ");
	      }
	      System.out.println();


	}

}
