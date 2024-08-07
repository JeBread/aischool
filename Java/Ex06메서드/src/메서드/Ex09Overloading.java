package 메서드;

public class Ex09Overloading {

	public static void main(String[] args) {
		
		// 한국인 이름을 데이터베이스에 저장하는 메서드 :
		// stName(성, 이름)
		stName("방","상제");
		stName("스티브","폴","잡스");
		
		// 오버로딩 사용하는 이유
		// 같은 기능을 하는 메서드들이 서로 다른 이름을 가지고 있으면 불편.
		// if문으로 구분할 필요가 없어 코드의 길이가 줄어든다.
		
		// 오버로딩(중복정의) - overloading
		// 같은 클래스 내에서 같은 이름의 메서드를 정의 할 수 있다.
		// 단, 매개변수의 형태가 달라야 한다. ( 데이터타입, 매개변수의 개수, 순서 )

	}
	public static void stName(String firstName, String lastName) {
		// 데이터베이스에 이름 저장
	}
	
	public static void stName(String firstName, String middleName, String lastName) {
		// 데이터베이스에 이름 저장
	}
	
	public static void stName(int firstName, String lastName) {
		//
	}
	
	public static void stName(String lastName, int firstName) {
		
	}
	
	// --**메서드 정리**--
	
	// main 밖
//	public : 접근제한자
//	static : 저장소
//	데이터타입, void :  리턴타입
//	--> 메서드를 통해 얻는 결과값(리턴값)의 데이터 타입
//	메서드명(호출명)
//
//	(매개변수)--> 모든 메서드들은 소괄호를 가지고 있다
//	매개변수 : 메서드 안에서 사용되는 변수로써 선언단만 작성
//	{} : 메서드 로직
//	로직 안쪽으로 return
//	1) 값을 호출한 곳으로 반환
//	2) 메서드 종료
//	리턴타입에 데이터 타입이 명시되어있으면 return 필수
//	void return 생략가능
//
//	사용(실행)
//	호출명(전달인자)
//	전달인자 == 매개변수
//	개수, 데이터타입, 순서
//
//	- 오버로딩(중복정의)
//	: 같은 클래스 내에서 같은 이름의 메서드를 만들 수 있다
//	단, 매개변수의 형태가 달라야한다
//	(데이터 타입, 매개변수의 개수, 순서)

}
