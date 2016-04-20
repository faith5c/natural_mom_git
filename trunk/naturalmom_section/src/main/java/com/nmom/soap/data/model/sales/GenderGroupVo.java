package com.nmom.soap.data.model.sales;

public class GenderGroupVo
{
	int mem_gender;
	int amount;
	
	public GenderGroupVo() {}
	
	public GenderGroupVo(int mem_gender, int amount) 
	{
		this.mem_gender = mem_gender;
		this.amount = amount;
	}

	public int getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(int mem_gender) {
		this.mem_gender = mem_gender;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
}
