package while문;

import java.util.Random;
import java.util.Scanner;

public class Ex09예제 {

	public static void main(String[] args) {
		
		// 랜덤으로 숫자를 가져와주는 기능
		Random rd = new Random();
		Scanner sc = new Scanner(System.in);
		
		while (true) {
		// bound(10) -> 0 ~ 9
		int num1 = rd.nextInt(1, 11);
		int num2 = rd.nextInt(1, 11);
		System.out.print(num1 + " + " + num2 + " = ");
		int ans = sc.nextInt();
		
		
		if (ans == (num1 + num2)) {
			System.out.println("Success");
			break;
		} else {
			System.out.println("Fail");
			System.out.println("계속 하시겠습니까 ? (Y//N) >>");
			String sel = sc.next();
			if (sel.equals("N")) {
				System.out.println("종료합니다.");
				break;
			} else {
				continue;
			}
		}
		}
		
		
		
		

		
	}

}
