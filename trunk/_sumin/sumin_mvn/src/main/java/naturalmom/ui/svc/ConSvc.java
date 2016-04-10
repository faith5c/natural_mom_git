package naturalmom.ui.svc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class ConSvc {
	public final String line1 = "======================================";
	public final String line2 = "--------------------------------------";
	
	public final int INCORRECT_RANGE_MIN_MAX = -8;
	public final int INCORRECT_NUMBER_INPUT = -9;

	public String inputUser(){
		
		System.out.print(">> ");
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		try {
			return br.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int checkNumberMinMax(int min, int max, String str){

		int num;
		try{
			num = Integer.parseInt(str);
			
			if(!(min<=num && num>=max)){
				System.out.println("INCORRECT_RANGE_MIN_MAX\n");
				return INCORRECT_RANGE_MIN_MAX;
			}
			
		}catch(Exception e){
			System.out.println("INCORRECT_NUMBER_INPUT\n");
			return INCORRECT_NUMBER_INPUT;
		}
		
		return num;
	}
	
}
