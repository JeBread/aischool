package JDBC기초;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Ex03Delete {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		PreparedStatement psmt = null;
		Connection con = null;
		
		System.out.print("삭제할 학생의 이름 입력 : ");
		String name = sc.next();
		System.out.print("나이 입력 : ");
		int age = sc.nextInt();
		
		Student stu = new Student(name, age);
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String id = "hr";
			String pw = "12345";
			String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
			
			con = DriverManager.getConnection(url, id, pw);

			String sql = "DELETE FROM STUDENT WHERE NAME = ? AND AGE = ?";
			
			psmt = con.prepareStatement(sql);
			
			psmt.setString(1, stu.getName());
			psmt.setInt(2, stu.getAge());
			
			int cnt = psmt.executeUpdate();
			
			if (cnt > 0) {
				System.out.println("삭제 성공");
			} else {
				System.out.println("삭제 실패");
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("동적 로딩 실패"); // forName 확인
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("권한 확인 실패");  // getConnection 확인
		} finally {
			try {
				// 사용된 적이 있는 기능만 반납할 수 있도록 if문 추가
				if (psmt != null)
					psmt.close();
				if (con != null)
					con.close();
				// 실행코드가 1개면 중괄호 생략
				
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("자원 반납 오류");
			}
		}
		
	}
}
