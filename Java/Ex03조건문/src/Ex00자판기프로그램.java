import java.util.Scanner;

public class Ex00자판기프로그램 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("금액 입력 : ");
		int price = sc.nextInt();
		System.out.println("메뉴를 고르세요.");
		System.out.print("1.아우터(700원) 2. 이구동성(1000원), 3.에그몽(500원) >> ");
		int menu = sc.nextInt();
		
		switch (menu) {
		case 1:
			if (price < 700) {
				System.out.println("돈이 부족해요 ㅠㅠ");
				System.out.println("잔돈 : " + price + "원");
				break;
			} else {
			System.out.println("잔돈 : " + (price - 700) + "원");
			price -= 700;
			System.out.print("천원 : " + ((price / 1000) + "개, "));
			price %= 1000;
			System.out.print("오백원 : " + ((price / 500) + "개, "));
			price %= 500;
			System.out.print("백원 : " + ((price / 100) + "개"));
			break;
			}
		case 2:
			if (price < 1000) {
				System.out.println("돈이 부족해요 ㅠㅠ");
				System.out.println("잔돈 : " + price + "원");
				break;
			} else {
			System.out.println("잔돈 : " + (price - 1000) + "원");
			price -= 1000;
			System.out.print("천원 : " + ((price / 1000) + "개, "));
			price %= 1000;
			System.out.print("오백원 : " + ((price / 500) + "개, "));
			price %= 500;
			System.out.print("백원 : " + ((price / 100) + "개"));
			break;
			}
		case 3:
			if (price < 500) {
				System.out.println("돈이 부족해요 ㅠㅠ");
				System.out.println("잔돈 : " + price + "원");
				break;
			} else {
			System.out.println("잔돈 : " + (price - 500) + "원");
			price -= 500;
			System.out.print("천원 : " + ((price / 1000) + "개, "));
			price %= 1000;
			System.out.print("오백원 : " + ((price / 500) + "개, "));
			price %= 500;
			System.out.print("백원 : " + ((price / 100) + "개"));
			break;
			}
		}

	}

}
