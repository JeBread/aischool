package while문;

import java.util.Scanner;

public class Ex01while문 {

	public static void main(String[] args) {
		
		// while문
		// 반복 횟수가 정해져 있지 않은 경우
		// ex) 사용자가 5라는 숫자 입력하면 멈출건데
		// 언제 5를 입력할지 모름
		
		// while문의 구조
		// while (조건식) { 조건식이 true일 동안 실행되는 코드 }
		// 1) 조건식을 사용해서 while문을 멈춰보자
//		int num = 1;
//		// 2) 조건식을 true
//		// 종료 조건을 준다.
//		while (num <= 10) {
//			System.out.println("d");
//			num += 1;
//			// break; 반복문을 종료시키는 키워드	
//		}
		
		// 실습
		
		Scanner sc = new Scanner(System.in);
		
		int a = 0;
		while (a != 7) {
			System.out.print("정수 입력 : ");
			a = sc.nextInt();
		}
		System.out.println("프로그램이 종료되었습니다.");
	}
}
