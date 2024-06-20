package 월급관리프로그램;

public class RegularEmployee extends Employee{

//   String empno;
//   String name;
//   int pay;    extends 하면서 없애도 되는 중복되는 부분들
   int bonus;
   
   
   public RegularEmployee(String empno, String name, int pay, int bonus) {
       super(empno, name, pay);
	   
	  // 부모 클래스에 생성자가 있으면, 반드시 자식클래스에 부모클래스
	  // 생성자가 구현되어 있어야한다. 
//      this.empno = empno;
//      this.name = name;
//      this.pay = pay;
      this.bonus = bonus;
   }

	@Override
	public int getMoneyPay() {
		return (pay+bonus)/12;
	}
   
   // 월급여를 결과로 돌려주는 메서드  -> 상속하고 있어서 없애도 됨
//   public int getMoneyPay() {
//      return (pay+bonus)/12;
//   }
   // 사원의 정보를 결과값으로 돌려주는 메서드 -> 상속하고 있어서 없애도 됨
//   public String print() {
//      return empno+":"+name+":"+pay;
//   }

   
   
}
