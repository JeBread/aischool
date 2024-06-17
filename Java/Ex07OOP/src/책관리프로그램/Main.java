package 책관리프로그램;

import java.util.Scanner;

public class Main {
   
   public static void main(String[] args) {
      
      Scanner sc = new Scanner(System.in);
      
      BookData[] books = new BookData[5];
      
      books[0] = new BookData("Java", 21000, "홍길동");
      books[1] = new BookData("C++", 29000, "박문수");
      books[2] = new BookData("Database", 31000, "김장독");
      books[3] = new BookData("Android", 18000, "이순신");
      books[4] = new BookData("Web", 26000, "김철수");
      
      System.out.print("금액을 입력하세요 : ");
      int price = sc.nextInt();
      System.out.println("구매 가능한 책 목록");
      for(int i = 0; i < books.length; i++) {
         if(price > books[i].getPrice()) {
            System.out.println("["+books[i].getTitle()+", "+
            books[i].getWriter()+", "+books[i].getPrice()+"원]");
         }   
      }
   }
}
