package for문;

import java.util.Scanner;

public class Ex02for문 {

	public static void main(String[] args) {
		
		// 1
		for (int i = 1; i <= 100; i++) {
			if (i % 3 == 0) {
				System.out.print(i + " ");
			}
		}
		System.out.println(" ");
		
		// 2
		for (int i = 1; i <= 100; i++) {
			if (i % 3 == 0 && i % 5 == 0) {
				System.out.print(i + " ");
			}
		}
		System.out.println(" ");
		
		// 3
		Scanner sc = new Scanner(System.in);
		
		System.out.print("자연수 입력 : ");
		int num = sc.nextInt();
		
		for (int i = 1; i <= 10; i++) {
			System.out.print(num * i + " ");
		}
		
		
	}

}
 