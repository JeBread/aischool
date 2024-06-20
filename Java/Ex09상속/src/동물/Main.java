package 동물;

import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {
		
		Penguin p1 = new Penguin();

		// upcasting (업캐스팅)
		Animal a1= p1;
		// : 자식클래스가 부모클래스타입으로 형변환
		// float f1 = 3.14f;
		// double d1 = f1;
		// : 자동형변환과 비슷한 개념
		a1.move();
		// 1) 오버라이딩된 메서드는 자식 클래스에 있던게 실행된다
		// 2) 고유하게 가지고 있는 메서드는 사용할 수 없다
		
		// Downcasting(다운캐스팅)
		// : 부모클래스가 자식 클래스 타입으로 형변환 되는 것을 말한다
		// 단, 업캐스팅이 된 부모클래스 자료형만 자식클래스로 바꿀수 있다
		// Animal a2 = new Animal();
		// Whale w1 = (Whale)a2;
		Penguin p2 = (Penguin)a1;
		// 동물은 고래다. 에러~
		// 강제형변환
		// 1) 다운캐스팅을 진행하면 업캐스팅 때 사용할 수 없었던 고유한 기능을
		// 		다시 사용할 수 있는 상태가 된다.
		
		
		Eagle e1 = new Eagle();
		Eagle e2 = new Eagle();
		
		Penguin p3 = new Penguin();
		Whale w2 = new Whale();
		
		Animal a3 = e1;
		Animal a4 = e2;
		Animal a5 = p3;
		Animal a6 = w2;
		
		//=============================================
		// abstract class
		// Animal a7 = new Animal();
		// Mammal m1 = new Mammal();
		// class
		Whale w = new Whale();
		
		
		
		
		
		
		
		
		
	}
}
