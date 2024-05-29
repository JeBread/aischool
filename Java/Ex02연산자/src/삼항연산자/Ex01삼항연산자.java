package 삼항연산자;

import java.util.Scanner;

public class Ex01삼항연산자 {

	public static void main(String[] args) {
		
		// 사용자로부터 정수를 하나 입력받아 홀수인지 짝수인지 판별하는 삼항연산자
		
		// 1) 입력 도구
		Scanner sc = new Scanner(System.in);
		
		// 2) 출력문
		System.out.print("정수를 입력하세요 >>");
		
		// 3) 사용자한테 하나 입력받기 (num)
		int num = sc.nextInt();
		
		// 4) num 홀수/짝수 여부 삼항연산자로 !
		
		System.out.println((num % 2 == 0) ? num + "는(은) 짝수입니다. 배고파요" : num + "는(은) 홀수입니다.");
		
		// 결과가 담길 변수 만들어서 진행도 가능
		String result = num % 2 == 0 ? "짝수" : "홀수";
		System.out.println(result);
		
	}

}
