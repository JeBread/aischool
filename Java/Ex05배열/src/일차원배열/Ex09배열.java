package 일차원배열;

import java.util.Scanner;

public class Ex09배열 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		String[] id_list = new String[3];
		int[] pw_list = new int[10];
		int id_cnt = 0;
		int res = 0;
		
		while (true) {
			System.out.print("[1]회원가입 [2]로그인 [3]종료 >> ");
			int select = sc.nextInt();
			if (select == 1) {
				if (id_cnt == 3) {
					System.out.println("더 이상 가입할 수 없습니다.");
					continue;
				}
				System.out.println("==회원가입==");
				for (int i = 0; i < 3; i++) {
					System.out.print("ID 입력 >> ");
					id_list[i] = sc.next();
					System.out.print("PW 입력 >> ");
					pw_list[i] = sc.nextInt();
					System.out.println("가입 성공");
					id_cnt += 1;
				}
				
			} else if (select == 2) {
				System.out.println("==로그인==");
				System.out.print("ID 입력 >> ");
				String user_id = sc.next();
				System.out.print("PW 입력 >> ");
				int user_pw = sc.nextInt();
				
				for (int i = 0; i < 3; i++) {
					if (id_list[i].equals(user_id) && pw_list[i] == user_pw) {
						res += 1;
					}
				}
				
				// 기억하기 !!
				// java 문자열 비교는 .equals()
				// 정수 비교는 그대로 비교연산자 ==
				
//				System.out.println(res);
				if (res >= 1) {
					System.out.println("로그인 성공");
					break;
				} else {
					System.out.println("로그인 실패");
				}
				
			} else {
				System.out.println("프로그램이 종료되었습니다.");
				break;
			}
		}
		
		
		
		
		
		
	}

}
