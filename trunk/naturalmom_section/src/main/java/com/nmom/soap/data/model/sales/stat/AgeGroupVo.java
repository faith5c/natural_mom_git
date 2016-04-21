package com.nmom.soap.data.model.sales.stat;

public class AgeGroupVo 
{
	int age_group;
	int amount;
	
	public AgeGroupVo() {}

	public AgeGroupVo(int age_group, int amount) 
	{
		this.age_group = age_group;
		this.amount = amount;
	}

	public int getAge_group() 
	{
		return age_group;
	}

	public void setAge_group(int age_group) 
	{
		this.age_group = age_group;
	}

	public int getAmount() 
	{
		return amount;
	}

	public void setAmount(int amount) 
	{
		this.amount = amount;
	}
	
	
}
