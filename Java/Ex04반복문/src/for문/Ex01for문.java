package for문;

public class Ex01for문 {

	public static void main(String[] args) {
		
		// 1)
		for (int i = 21; i <= 57; i++) {
			System.out.print(i+" ");
		}
		System.out.println(" ");
		
		// 2)
		for (int i = 96; i >= 53; i--) {
			System.out.print(i+" ");
		}
		System.out.println(" ");
		
		// 3)
		for (int i = 21; i <= 57; i++) {
			if (i % 2 == 1) {
				System.out.print(i+" ");
			}
			continue;
		}
	}

}
