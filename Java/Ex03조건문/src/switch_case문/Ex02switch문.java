package switch_case문;

import java.util.Scanner;

public class Ex02switch문 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.print("1~12월 중 숫자 하나를 입력하세요 : ");
		int month = sc.nextInt();

		switch (month/3) {
		case 1:
			System.out.println("현재 계절은 봄입니다.");
			break;
		case 2:
			System.out.println("현재 계절은 봄입니다.");
			break;
		case 3:
			System.out.println("현재 계절은 봄입니다.");
			break;
		default:
			System.out.println("현재 계절은 겨울입니다.");
			break;
		}
		
		switch (month) {
		case 12:
			System.out.println("현재 계절은 겨울입니다.");
			break;
		case 1:
			System.out.println("현재 계절은 겨울입니다.");
			break;
		case 2:
			System.out.println("현재 계절은 겨울입니다.");
			break;
		case 3:
			System.out.println("현재 계절은 봄입니다.");
			break;
		case 4:
			System.out.println("현재 계절은 봄입니다.");
			break;
		case 5:
			System.out.println("현재 계절은 봄입니다.");
			break;
		case 6:
			System.out.println("현재 계절은 여름입니다.");
			break;
		case 7:
			System.out.println("현재 계절은 여름입니다.");
			break;
		case 8:
			System.out.println("현재 계절은 여름입니다.");
			break;
		default:
			System.out.println("현재 계절은 가을입니다.");
			break;
		
		}
		

	}

}
