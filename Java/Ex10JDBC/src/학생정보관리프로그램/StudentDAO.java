package 학생정보관리프로그램;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	// 데이터베이스 연결 기능 - dpOpen()
	public void dbOpen() {
		// 1. 동적 로딩
		// 2. 연결 권한
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String id = "hr";
			String pw = "12345";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("동적 로딩실패");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("연결 실패");
		}
	}
	// 자원 반납 기능 - dbClose()
	public void dbClose() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// dto를 데이터베이스에 저장하는 - 학생등록
	public int insert(StudentDTO dto) {
		
		// 사용자가 view에서 입력했었던
		// name, age, gender ,major - dto에 담겨있는 상태
		
		// jdbc 코드
		// 1. 동적 로딩
		// 2. 연결 권한 확인
			// 3. 쿼리문 준비
		// 4. 쿼리문 psmt에 담기
		// 5. 쿼리문 실행 및 결과값 처리
		// 6. 자원반납
		try {
			dbOpen();
			// SQLException - dbOpen에서는 연결 권한 캐치
			
			String sql = "INSERT INTO STUDENT VALUES(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setInt(2, dto.getAge());
			psmt.setString(3, dto.getGender());
			psmt.setString(4, dto.getMajor());
			
			cnt = psmt.executeUpdate();
			// cnt가 데이터베이스랑 연결하고 나서 받아온 결과값
			// cnt를 view에 어떤 값인지를 알려줘야 함.
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQL문 실행 오류");
		} finally {
			dbClose();
		}
		return cnt;
	}
	
	public int update(StudentDTO dto) {
		try {
			dbOpen();
			String sql = "UPDATE STUDENT SET MAJOR=? WHERE NAME=? AND AGE=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMajor());
			psmt.setString(2, dto.getName());
			psmt.setInt(3, dto.getAge());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("sql문 실행 오류");
		} finally {
			dbClose();
		}
		return cnt;
	}
	
	public int delete(StudentDTO dto) {
		try {
			dbOpen();
			String sql = "DELETE FROM STUDENT WHERE NAME=? AND AGE=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setInt(2, dto.getAge());
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("sql문 실행 오류");
		} finally {
			dbClose();
		}
		return cnt;
	}
	
}
