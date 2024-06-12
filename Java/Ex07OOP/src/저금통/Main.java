package 저금통;

public class Main {

	public static void main(String[] args) {
		
		// 1) PiggyBank 설계도 사용해서 객체생성
		PiggyBank pig = new PiggyBank(10000);
		
		// 2) money = 10000
		System.out.println("잔액은" + pig.getMoney() + "원 입니다.");
		
		// 3) 돈 넣기 5000원
		pig.deposit(5000);
		// 4) 잔액확인 15000원
		System.out.println("잔액은" + pig.getMoney() + "원 입니다.");
		
		// 5) 돈 인출하기 1200원
		pig.withdraw(1200);
		
		// 6) 잔액확인 13800원
		System.out.println("잔액은" + pig.getMoney() + "원 입니다.");
		
		// 7) setter를 사용해서 잔액을 18000원으로 바꿔보자
		pig.setMoney(18000);
		System.out.println("잔액은" + pig.getMoney() + "원 입니다.");
		
		

	}

}
