package while문;

import java.util.Scanner;

public class Ex07예제 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		// 숫자, 문자한개(char)의 같다를 비교할때
		// :==
		
		// 문자열이 같다를 비교할 때는
		// equals()
		
//		String name = "방상제";
//		if (name.equals("방상제")) {
//			System.out.println("로그인성공");
//		}
		
		int cnt = 0;
		while (true) {
		System.out.print("아이디 입력 : ");
		String id = sc.next();
		System.out.print("비밀번호 입력 : ");
		String pw = sc.next();
		
		if (id.equals("Hello") && pw.equals("1234")) {
			System.out.println("로그인 성공!");
			break;
		} else {
			cnt += 1;
			if (cnt == 3) {
				System.out.println("3회 틀렸습니다. 본인인증을 해주세요.");
				break;
			}
			System.out.println("아이디 비번 잘못 되었습니다.");
			System.out.print("계속 하시겠습니까 ? (Y//N) >>");
			String ans = sc.next();
			if (ans.equals("N")) {
				System.out.println("종료합니다.");
				break;
			} else {
				continue;
			}
		}
		}
		
		
	}

}
