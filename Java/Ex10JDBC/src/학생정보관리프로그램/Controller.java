package 학생정보관리프로그램;

public class Controller {

	// 학생등록을 진행하는 기능 - view에서 입력한 등록할 데이터를 받아주는 역할
	public void insert(StudentDTO dto) {
		
		StudentDAO dao = new StudentDAO();
		int cnt = dao.insert(dto); // cnt가 리턴되어 옴

		if (cnt > 0) {
			System.out.println("학생 등록성공");
		} else {
			System.out.println("학생 등록실패");
		}
		
	}
	
	public void update(StudentDTO dto) {
		StudentDAO dao = new StudentDAO();
		int cnt = dao.insert(dto);
		
		if (cnt > 0) {
			System.out.println("학생정보 수정성공");
		} else {
			System.out.println("학생정보 수정실패");
		}
	}
	
	public void delete(StudentDTO dto) {
		StudentDAO dao = new StudentDAO();
		int cnt = dao.insert(dto);
		
		if (cnt > 0) {
			System.out.println("학생정보 삭제성공");
		} else {
			System.out.println("학생정보 삭제실패");
		}
	}
	
}
