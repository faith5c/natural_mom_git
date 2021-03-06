package com.nmom.soap.ui.svc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public abstract class ConUiSvc {
	
	final int MAIN_MENU_NOTICE = 1;
	final int MAIN_MENU_ORDER= 2;
	final int MAIN_MENU_ORDER_MANAGER= 3;
	final int MAIN_MENU_SALESTATEMENT = 4;
	final int MAIN_MENU_ORDERER = 5;
	final int EXIT = 6;
	final int PREV = 0;
	
	final int ERROR = -1;
	
	public void show() {
		int num = -1;
		while(num != 0){
		showMenu();
		num = inputNumber(inputUser());
		execFunctions(num);
		}
	}
	
	abstract public void showMenu();
	
	abstract public void execFunctions(int num);
	
	public String inputUser(){
		String str = null;
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		try {
			str = br.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return (str != null && !str.isEmpty()) ? str : null; 
	}
	
	public int inputNumber(String str){
		try {
		int num = Integer.parseInt(str);
		return num;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	
}
