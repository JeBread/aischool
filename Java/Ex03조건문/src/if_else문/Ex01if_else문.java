package if_else문;

import java.util.Scanner;

public class Ex01if_else문 {

	public static void main(String[] args) {
		
		// if-else문
		// 조건식의 참/거짓에 대한 실행코드
		
		// if (조건식) {
		// 조건식이 true 일 때 실행할 코드
		// } else {
		// false 일 때 실행할 코드
		// }
		
		// ctrl + a : 전체선택
		// ctrl + shift + r : 코드정리
		
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 입력 : ");
		int num = sc.nextInt();
		
		if (num % 2 == 0) {
			System.out.println("짝수입니다.");
		} else {
			System.out.println("홀수입니다.");
		}
		
		
		

	}

}
