package if_else문;

import java.util.Scanner;

public class Ex02if_else문 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("가격 입력 : ");
		int cnt  = sc.nextInt();
		
		if (cnt >= 11) {
			System.out.println("가격은 " + ((cnt*10000)/10)*9 + " 원입니다.");
		} else {
			System.out.println("가격은 " + (cnt*10000) + " 원입니다.");
		}

	}

}
