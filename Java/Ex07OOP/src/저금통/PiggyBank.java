package 저금통;

public class PiggyBank {
	
	private int money;
	// private : 필드를 클래스 외부에서 접근할 수 없도록 도와주는 제한자
	// private으로 되어있는 필드는 존재하고 있는 클래스 내부에
	// 메서드를 통해서만 접근이 가능
	
	// - 생성자(Constructor)
	public PiggyBank(int money) {
		// 기본 생성자 : 클래스를 만들 때 생략되어 있음.
		// 1. 객체 생성을 할 수 있다.
		// 2. 필드를 초기화(할당) 할 수 있다.
		this.money = money;
	}
	
	// 생성자의 특징***** 매우 중요 !!
	// 1. 생성자도 메서드
	// 2. 생성자는 리턴타입이 없다(void도 안옴)
	// 3. 기본생성자는 생략되어있다.
	// 4. 새로운 생성자를 내가 만들면
	// 필드를 초기화시키는 생성자를 만들면
	// 기본 생성자는 사용할 수 없는 상태가 된다.
	
	
	
	
	// getter/setter
	// getter : 필드에 있는 데이터를 결과값으로 돌려주는 메서드
	// setter : 필드에 있는 값을 수정하는 메서드
	public int getMoney() {
		// 현재 필드에 있는 값을 결과로 돌려주기
		return money;
	}
	public void setMoney(int money) {
		// 매개변수 money : 어떤 값으로 수정할 건지에 대한 데이터
		this.money = money;
	}
	
	
	
	public int deposit(int num) {
		// 돈을 넣는다.
		money += num;
		return money;
	};
	public int withdraw(int num) {
		// 돈을 인출한다.
		money -= num;
		return money;
	};
	public void showMoney() {
		// 잔액을 보여준다.
		System.out.println("현재 잔액은 " + money + "원 입니다.");
	};
	
}
