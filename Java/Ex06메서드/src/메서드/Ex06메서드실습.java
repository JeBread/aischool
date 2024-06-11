package 메서드;

public class Ex06메서드실습 {
	
	public static int cal(int a, int b, char c) {
		// 전달인자 매개변수의 이름을 같은 이름을 주는 편
		// 나중에 어떤 데이터를 사용하는지 구분하기 위해서
		if (c == '-') {
			return a - b;
		} else if (c == '+') {
			return a + b;
		} else if (c == '*') {
			return a * b;
		} else {
			return a / b;
		}
		

	}

	public static void main(String[] args) {
		int num1 = 5;
		int num2 = 2;
		char op = '-';
		
		System.out.print(cal(num1, num2, op));

	}

}
