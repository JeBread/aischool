package 메서드;

public class Ex01메o리o {
	
	public static int minus(int a, int b) {
		return a - b;
	}

	public static void main(String[] args) {
		System.out.print(minus(9, 7));
	}

	// main 밖 - 메서드 정의
	// 1. public
	// - 클래스 내/외부에서 자유로운 접근을 할 수 있도록 도와주는 제한자
	// private, protected, default
	
	// 2. static : 저장소
	// 메모리 공간이 굉장히 작기 때문에 함부로 사용하지 말 것.
	
	// 3. int : 리턴타입
	// 내가 메서드를 사용했을 때 돌려받는 결과값에 대한 데이터 타입.
	
	// return : return 타입에 데이터 타입이 명시되어 있으면
	// 반드시 메서드 로직 안에 키워드가 포함되어 있어야 한다.
}
