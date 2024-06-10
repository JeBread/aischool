package 이차원배열;

public class Ex05이차원배열 {

	public static void main(String[] args) {
		
		int[]point = {92, 32, 52, 9, 81, 2, 68};
		int[]res = new int[2];
		int minV = 100;
		
		for (int i = 0; i < 7; i++) {
			for (int j = 0; j < 7; j++) {
				if (point[i] != point[j]) {
					if ( Math.abs(point[i] - point[j]) < minV) {
						minV = Math.abs( point[i] - point[j] );
						res[0] = i;
						res[1] = j;
					}
				}
			}
		}
		System.out.print("result = [" + res[0] + ", " + res[1] + "]");
	}

}
