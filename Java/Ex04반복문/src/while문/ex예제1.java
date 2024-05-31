package while문;

import java.util.Scanner;

public class ex예제1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
        System.out.print("5월 판매 보험개수 : ");
	    int sale = sc.nextInt();
	    int res = 500000;
	    
	    if (sale < 20) {
	    	res = 500000 - 50000 * (20 - sale);
	    	if (res < 0) {
	    		res = 0;
	    	}
	    } else {
	    	res += ((sale-20) * 50000);
	    }
	    System.out.println(res);
	}

}
