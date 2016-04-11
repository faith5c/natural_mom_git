package com.nmom.soap.ui.svc;

import com.nmom.soap.data.impl.member.VOrdererDaoOraImpl;
import com.nmom.soap.data.model.member.VOrdererVo;
import com.nmom.soap.data.model.order.OrderVo;
import com.nmom.soap.data.model.order.ProductOrderVo;

public class OrdererConUiSvc extends ConUiSvc {

	private VOrdererDaoOraImpl vOrdererDaoOra;
	
	final int ORDERER = 1;
	final int EXIT =2;
	final int PREV = 0;
	
	@Override
	public void showMenu() {
		System.out.println(" 1. ORDERER ");
		System.out.println(" 2. EXIT");
		System.out.println(" 0. PREV");
		System.out.print(" >> ");
	}

	@Override
	public void execFunctions(int num) {
		switch (num) {
		case ORDERER: //1
			getOrederer(vOrdererDaoOra.getOrderer("sora"));
			break;
			
		case EXIT: //2
			System.exit(0);
			break;
			
		case PREV : //0
			
			break;
		default:
			System.exit(0);
			break;
		}
	}

	private void getOrederer(VOrdererVo orderer) {
		System.out.println(orderer);
	}

	public void setvOrdererDaoOra(VOrdererDaoOraImpl vOrdererDaoOra) {
		this.vOrdererDaoOra = vOrdererDaoOra;
	}


}
