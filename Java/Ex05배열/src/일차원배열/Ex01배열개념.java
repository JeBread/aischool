package 일차원배열;

public class Ex01배열개념 {

   public static void main(String[] args) {

      // 배열의 필요성
      String b1 = "양준영";
      String b2 = "방상제";
      String b3 = "김지호";
      String b4 = "김창민";
      String b5 = "조자연";
      // 5명의 학생이름을 for문을 사용하면 출력할 수 있지 않을까?
      
      // 변수를 만드는건 서로 다른 공간이 5개가 생기것! (흩어져있음)
      // for문을 사용한 순차적인 접근은 불가능하게 만들어짐
      
      // 이름을 관리하는 배열을 만들어 주자
      // 1) 배열을 생성하는 방법
      // 자료형[] 배열명 = new 자료형[배열의크기];
      // 자료형 : 내가 배열에 저장하고 싶은 데이터들의 타입
      // [] --> 배열을 의미
      // new --> 동적 메모리를 새롭게 할당 해주는 키워드
      // 배열을 생성할 때는 뒤쪽에서 반드시 크기를 정해줘야한다
      
      String[] names = new String[5];
      // - 배열은 인덱스 구조를 가지고 있다
      System.out.println(names);
      // names : 레퍼런스형 변수(주소값을 참조하는 변수)
      
      // 기본 데이터 타입이 저장되는 방법 (boolean, int, doulbe, char..)
      // 레퍼런스형 데이터 타입이 저장되는 방법 (String, 배열)
      
      names[1] = b1;
      names[2] = b2;
      names[3] = b3;
      names[4] = b4;
      names[0] = b5;
      // ArrayIndexOutofBoundsException : 예외상황
      // - 실행을 시켜야 알 수있는 에러
      // - 인덱스 값이 초과/ 없는 인덱스 값에 접근
      // index 기본적으로 0부터 시작한다....
      // names가 가질 수있는 인덱스 값은 0 ~ 4
      
      // 인덱스를 변수로 사용/for문을 사용해서 names배열에 
      // 저장되어있는 이름 5개를 출력해보자!
      for(int i = 0; i <= 4; i++) {
         System.out.println(names[i]);
      }
      
      // 학생수가 증가해요... 
      // names[5] = "한재옥";
      // 앞에서 배열을 생성할 때 정해놓은 크기를 뒤에서 바꿀 수 없다...
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   }

}