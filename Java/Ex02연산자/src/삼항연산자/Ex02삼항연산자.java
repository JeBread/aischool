package 삼항연산자;

import java.util.Scanner;

public class Ex02삼항연산자 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("첫번째 정수를 입력하세요 >> ");
		int num1 = sc.nextInt();
		
		System.out.print("두번째 정수를 입력하세요 >> ");
		int num2 = sc.nextInt();

		// 두 수의 차가 결과값
		// 큰숫자 - 작은숫자
		// 어떤 수가 더 큰 숫자인지 비교 !
		
		System.out.println((num1 - num2 > 0) ? "두 수의 차 : " + (num1 - num2) : "두 수의 차 : " + (num2 - num1));
	
	}

}
