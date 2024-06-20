package 동물;

public abstract class Animal {
	
	String gender;
	
	public void eat() {
		System.out.println("식사중~");
	}
	
	public void sleep() {
		System.out.println("자는즁~");
	}
	
	public abstract void move();
	
	// move가 어차피 자식클래스에서 계속 재정의 되고 있음을 발견
	// body를 없앤다
	// body가 없는 매서드를 만들려면 추상메서드로 만들어줘야한다
	// public abstract 리턴타입 메서드명();
	
	// 갑자기 class에 오류가 발생
	// 추상메서드를 포함하고 있는 클래스는 반드시 추상클래스가 되어야한다
	
	// 추상 클래스는 일반 메서드만 가지고 있을 수 있다.
	
	

}
