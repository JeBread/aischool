package Person;

public class Person {
	
	// 설계도에 해당하는 곳
	// Class == 설계도
	// 1) Field(필드) : 데이터, 변수, 속성, 정보
	// 내가 설계하고자 하는 Object가 가질 수 있는 데이터
	
	// 사람이 가질 수 있는 데이터(변수, 정보)?
	// 나이
	// 성별
	// 이름
	// 필드를 만들 때는 선언만 해준다.
	
	int age;
	String gender;
	String name;

	// 2) Method(메서드) : Object의 행위/행동, 기능
	// 숨쉬기
	// 밥먹기
	// 잠자기
	public void breathe() {
		System.out.println("숨을 쉰다");
	};
	public void eat() {
		System.out.println("밥을 먹는다");
	};
	public void sleep() {
		System.out.println("잠을 잔다");
	};
	
	
	
}
