package while문;

import java.util.Scanner;

public class Ex06예제 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.print("현재 몸무게 : ");
		int now = sc.nextInt();
		System.out.print("목표 몸무게 : ");
		int goal = sc.nextInt();
		int i = 1;
		int lose = 0;
		
		while (now > goal) {
			System.out.print(i + "주차 감량 몸무게 : ");
			lose = sc.nextInt();
			now -= lose;
			i += 1;
		}
		
		System.out.println("몸무게 달성을 축하합니다.");

	}

}
