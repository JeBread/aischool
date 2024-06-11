package 메서드;

public class Ex08완전수구하기 {
	
	public static boolean isDivisor(int num1, int num2) {
//		if (num1 % num2 == 0) {
//			return true;
//		} else {
//			return false;
//		}
		return num1 % num2 == 0 ? true : false; // 삼항연산자 가능
	}
	
	public static void getDivisor(int a) {
		System.out.print(a + "의 약수 : ");
		for (int i = 1; i <= a; i++) {
			// 위에 만든 isDivisor 로 할 수 있음
			// if (isDivisor(num, i)) {
			
			if (a % i == 0) {
				System.out.print(i + " ");
			}		
		}
		System.out.println();
	}
	
	public static int getSumOfDivisors(int num) {
		int sum = 0;
		for (int i = 1; i <= num; i++) {
			if (isDivisor(num, i)) {
				sum += i;
			}
		}
		return sum;
	}
	
	public static boolean isPerfectNumber(int num) {

		if ((getSumOfDivisors(num) - num) == num) {
			return true;
		} else {
			return false;
		}
	}
	
	public static void getPerfectNumber(int st, int ed) {
		System.out.print(st + "~" + ed + "까지의 완전수 : ");
		for (int i = st; i <= ed; i++) {
			if (isPerfectNumber(i)) {
				System.out.print(i + " ");
			}
		}
	}
	
	

	public static void main(String[] args) {
		
		// 여기에 앞으로 나오는 모든 메서드 문제 풀기
		// 1) isDivisor() : 약수인지 아닌지 확인해주는 메서드
		int num1 = 10;
		int num2 = 2;
		boolean divisor = isDivisor(num1, num2);
		System.out.println(divisor);
		
		// 2) getDivisor() : 약수의 종류를 보여주는 메서드 
		getDivisor(10);
		getDivisor(16);
		getDivisor(24);
		
		// 3) getSumOfDivisors() : 약수들의 합을 결과값으로 돌려주는 메서드
		int num = 10;
		int res = getSumOfDivisors(num);
		
		System.out.println(num + "의 약수의 합 : " + res);
		
		// 완전수란 ?
		// 나를 제외한 약수들의 합이 나와 같은 것
		
		// 4) isPerfectNumber () : 완전수인지 확인해서 true/false
		int num3 = 28;
		boolean res2 = isPerfectNumber(num3);
		System.out.println(res2);

		// 5) getPerfectNumber () : 시작과 끝 범위 안에 존재하는 완전수 목록 출력
		int start = 2;
		int end = 1000;
		getPerfectNumber(start, end);
	}
	
	

}
