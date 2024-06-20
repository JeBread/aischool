package 동물;

public class Bird extends Animal {
	
	public void egg() {
		System.out.println("알낳는중~");
	}
	
	// Animal에서 물려주는 move를 "난다"
	// 실제로 물려받고 있는 메서드는 "움직인다"
	// 조류가 움직이는건 맞지만 안에 로직이 "난다"로 바뀌어 출력
	
	// 오버라이딩(Override) : 재정의
	// 상속관계에서 같은 이름의 메서드를 재정의할 수 있다.
	// 단, 리턴타입, 매개변수의 형태가 바뀌면 안된다.
	
	// alt + shift + s -> override
	
	@Override // 어노테이션
	public void move() {
		System.out.println("나는중~");
	}

	

}
