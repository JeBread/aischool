package Person;

public class Main {

	public static void main(String[] args) {
		
		// 설계도의 사용하는 곳
		// 설계도의이름  레퍼런스형변수명  = new 설계도의이름();
		Person p1 = new Person();
		Person p2 = new Person();
		// new - 새로운 주소값을 가지는 동적 메모리를 할당
		System.out.println(p1);
		// Person - 필드(나이, 이름, 성별), 메서드(숨,밥,잠)
		// . (참조연산자)
		p1.age = 31;
		p1.gender = "남자";
		p1.name = "바보";
		p1.breathe();
		
		p2.age = 29;
		p2.gender = "남자";
		p2.name = "양준영";
		
		System.out.println(p1.name + p1.age + p1.gender);
		
		// 실습) Person 설계도 사용해서 p2 만들어보자
		// p2의 필드를 짝꿍의 정보

		System.out.println(p2.name + " : " + p2.age + " : " + p2.gender);
		
		
	}

}
