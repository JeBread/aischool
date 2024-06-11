package 메서드;

public class Ex07메서드실습 {
	
	public static int largerNumber(int num1, int num2) {
		if (num1 > num2) {
			return num1;
		} else if (num1 < num2) {
			return num2;
		} else {
			return 0;
		}
		
	}

	public static void main(String[] args) {
		int num1 = 10;
		int num2 = 24;
		int res = largerNumber(num1, num2);
		System.out.println("큰 수 확인 : " + res);

	}

}
