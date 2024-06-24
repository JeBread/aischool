package JDBC기초;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Ex04Select {

	public static void main(String[] args) {
		
		// 실행시켰을 때 DB에 있는 전체 데이터를 조회할 수 잇도록 만들어주자
		// - SELECT * FROM STUDENT;
		PreparedStatement psmt = null;
		Connection con = null;
		ResultSet rs = null;
		try {
			// 1. 동적 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 데이터 베이스 연결 권한 확인
			String id = "hr";
			String pw = "12345";
			String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
			
			con = DriverManager.getConnection(url, id, pw);

			String sql = "SELECT * FROM STUDENT";
			
			psmt = con.prepareStatement(sql);
			
			// SELECT문 - executeQuery();
			
			rs = psmt.executeQuery();
			// ResultSet : 결과값
			// 데이터 베이스에서 테이블 형태의 데이터를
			// 자바에서 사용할 수 있는 테이블 형태로 받아오는 자료형
			
			while (rs.next()) {
				// rs.next()가 true일 동안 반복문
				// 가져올 행이 있을 경우 동작하는 반복문
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String gender = rs.getString("gender");
				String major = rs.getString("major");
				// 컬럼 이름은 대소문자 상관 X
				
				System.out.println(name + age + gender + major);
				
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("동적 로딩 실패"); // forName 확인
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("연결 실패");  // getConnection 확인
		} 
		finally {
			try {
				// 사용된 적이 있는 기능만 반납할 수 있도록 if문 추가
				if (rs != null)
					rs.close();
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
