package elseif문;

import java.util.Scanner;

public class Ex01elseif문 {

	public static void main(String[] args) {
		
		// if-elseif-else문
		// 두 개 이상의 조건식 판별 후 실행
		
		// if (조건식1) {
		// 조건식1이 true 일 경우 실행할 코드
		// } else if (조건식2) {
		// 조건식2가 true 일 경우 실행할 코드
		// } else {
		// 모든 조건식이 만족하지 않았을 경우 실행할 코드
		// 필수는 아님
		// }
		
		
		int num = 3;
		// 짝수인지, 홀수인지, 0인지
		if (num == 0) {
			System.out.println("0입니다.");
		} else if (num % 2 == 1) {
			System.out.println("홀수입니다.");
		} else {
			System.out.println("짝수입니다.");
		}
		
		
		

	}

}
