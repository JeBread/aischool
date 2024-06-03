package while문;

import java.util.Scanner;

public class Ex04dowhile문 {

	public static void main(String[] args) {
		
		// do-while문
		// 반복 횟수가 정해져 있지 않을 경우 사용
		
		// do {
		// 한 번은 실행시킬 코드 ==true일동안 반복할 코드
		// } while(조건식);
		
		// do-while문과 while문의 차이점
		int cnt = 6;
		
		// cnt가 5일동안 반복 - syso("반복");
		while (cnt == 5) {
			System.out.println("반복");
		}
		
		do {
			System.out.println("반복");
		} while (cnt == 5);
		
		
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 입력 : ");
		int num = sc.nextInt();

	}

}
