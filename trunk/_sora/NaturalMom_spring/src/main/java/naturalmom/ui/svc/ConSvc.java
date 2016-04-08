package naturalmom.ui.svc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public abstract class ConSvc 
{
	public static final int ERROR = -1;
	
	public abstract void execFunctions(int num);
	
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
}
