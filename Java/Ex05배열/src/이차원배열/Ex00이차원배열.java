package 이차원배열;

public class Ex00이차원배열 {

	public static void main(String[] args) {
		
		// 이차원 배열
		// : 1차원 배열 안에 1차원 배열이 들어가 있는 구조
		// : 같은 자료형의 데이터들을 관리하는 구조
		
		// 1) 이차원 배열 선언 및 생성
		// 자료형[][] 배열명 = new 자료형[5][3];
		int[][] arr = new int[5][3];
		System.out.println(arr);
		
		// arr2 라는 이차원 배열
		// 크기는 5,5 정방형 이차원배열
		
		int[][] arr2 = new int[5][5];
		int num = 1;
		
		for (int i = 0; i < 5; i++) {
			for (int j = 0; j < 5; j++) {
				arr2[i][j] = num;
				num += 1;
			}
		}
		
		for (int i = 0; i < arr2.length; i++) {
			for (int j = 0; j < 5; j++) {
				System.out.print(arr2[i][j] + "\t");
			}
			System.out.println();
		}
		
		int[][] arr3 = new int[5][5];
		int num2 = 21;

		for (int i = 0; i < 5; i++) {
			for (int j = 0; j < 5; j++) {
				arr3[i][j] = num2;
				num2 += 1;
			}
		}
		
		for (int i = 0; i < arr3.length; i++) {
			for (int j = 0; j < 5; j++) {
				System.out.print(arr3[i][j] + "\t");
			}
			System.out.println();
		}
		
	}

}
