package 단순if문;

import java.util.Scanner;

public class Ex01단순if문 {

	public static void main(String[] args) {
		
		// 제어문
		// 1) 조건문
		// if, if-else, elseif, switch-case
		
		// 단순 if문의 문법 구조
		// if (조건식) {
		// 조건식이 true일 때, 실행할 코드
		// }
		
		Scanner sc = new Scanner(System.in);
		System.out.print("나이 입력 : ");
		int age = sc.nextInt();
		
		if (age >= 20) {
			System.out.println("성인입니다.");
		}
		
		
		

	}

}
