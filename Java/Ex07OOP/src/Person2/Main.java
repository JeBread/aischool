package Person2;

public class Main {

   public static void main(String[] args) {
      
      Person person1 = new Person();
      person1.setName("김창선");
      person1.setAge(29);
      
      Person person2 = new Person("한재옥", 25);
      
      
      System.out.println("st1 객체 학생이름 : "+person1.getName()+
            ", 나이 : "+person1.getAge());
      System.out.println("st2 객체 학생이름 : "+person2.getName()+
            ", 나이 : "+person2.getAge());
      
      // 객체배열
      Person[] pArray = new Person[2];
      
      pArray[0] = person1;
      pArray[1] = person2;
      System.out.println(pArray[0].getName());
      System.out.println(pArray[1].getName());
      
      for(int i = 0; i < pArray.length; i++) {
         System.out.println(pArray[i].getName());
      }
      
   }

}
