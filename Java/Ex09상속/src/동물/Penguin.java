package 동물;

public class Penguin extends Bird{
	
	public void slide() {
		System.out.println("내 배는 썰배");
	}
	
	@Override
	public void move() {
		System.out.println("헤엄 헤엄 헤엄~~");
	}

}
