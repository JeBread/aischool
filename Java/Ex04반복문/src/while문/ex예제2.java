package while문;

import java.util.Scanner;

public class ex예제2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
        
        System.out.print("[1]IT [2]예술 [3]금융 >> ");
        int event = sc.nextInt();
        
        System.out.print("금액 >> ");
        int inputMoney = sc.nextInt();
        
        System.out.print("개수 >> ");
        int count = sc.nextInt();
        
        double pct = 0;
        switch (event) {
        case 1:
        	pct = 1.35;
        	break;
        case 2:
        	pct = 1.4;
        	break;
        case 3:
        	pct = 0.85;
        	break;
        }
        
        double res = (inputMoney * pct)*count;
        System.out.println((int) (res));
        

	}

}
