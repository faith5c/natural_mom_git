package naturalmom.ui.svc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class ConSvc {
	
	public final String line1 = "\n======================================";
	public final String line2 = "--------------------------------------";
	
	public final int INCORRECT_RANGE_MIN_MAX = -8;
	public final int INCORRECT_NUMBER_INPUT = -9;

	public String inputUser(){
		System.out.print(">> ");
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		try {
			String input = br.readLine();
			return input;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void inputEnter(){
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		try {
			br.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int checkNumberMinMax(int min, int max, String str){

		int num;
		try{
			num = Integer.parseInt(str);
			
			if(num<min || max<num){
				System.out.println("INCORRECT_RANGE_MIN_MAX");
				return INCORRECT_RANGE_MIN_MAX;
			}
			
		}catch(Exception e){
			System.out.println("INCORRECT_NUMBER_INPUT");
			return INCORRECT_NUMBER_INPUT;
		}
		
		return num;
	}
	
	public String[] StrSplitTrim(String str){
		String strArr[] = str.split(",");
		
		for(int i=0; i<strArr.length; i++){
			strArr[i] = strArr[i].trim();
		}
		return strArr;
	}
}
