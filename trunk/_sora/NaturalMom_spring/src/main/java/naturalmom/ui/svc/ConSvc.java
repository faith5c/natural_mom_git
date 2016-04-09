package naturalmom.ui.svc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public abstract class ConSvc 
{
	public static final int ERROR = -1;
	public static final int EXIT = 9;
	
	public static final int TRUE = 1;
	public static final int FALSE = 0;
	
	public static final boolean ASC = true;
	public static final boolean DESC = false;
	
	public abstract void execFunctions(int num);
	
	public abstract void showMenu();
	
	public String inputUser()
	{
		String str = null;
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		try {
			str = br.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return (str != null && !str.isEmpty()) ? str : null; 
	}
	
	public int inputNumber(String str)
	{
		try {
		int num = Integer.parseInt(str);
		return num;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	
	public void showResult(int result)
	{
		if(result > 0)
			System.out.println("성공");
		else
			System.out.println("실패");
	}
}
