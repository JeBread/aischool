package 학생정보관리프로그램;

public class Main {

   public static void main(String[] args) {
      
      Student student1 = new Student("나예호", 
            "20200801", 20, 10, 80, 95);
      Student student2 = new Student("김운비", 
            "20111003", 19, 90, 65, 30);
      Student student3 = new Student();
      
      student1.show();
      student2.show();
      student3.name = "김창선";
      student3.number = "19941003";
      student3.age = 29;
      student3.show();
      
   }

}