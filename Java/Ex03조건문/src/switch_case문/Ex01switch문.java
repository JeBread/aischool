package switch_case문;

public class Ex01switch문 {

	public static void main(String[] args) {
		
//		switch (변수) {
//		case 값1 :
//			변수랑 값1이 같으면 실행할 코드
//			break; switch-case 문을 빠져나가는 키워드
//		case 값2 :
//			변수랑 값2가 같으면 실행할 코드
//		}

		int num = 5;
		// () : 변수, 식(결과값)
		switch (num % 2) {
		case 1:
			System.out.println("홀수입니다.");
			break;
		case 0:
			System.out.println("짝수입니다.");
			break;
		default:
			// 모든 경우를 만족하지 않았을 때 실행할 코드
			
		}
	}

}
