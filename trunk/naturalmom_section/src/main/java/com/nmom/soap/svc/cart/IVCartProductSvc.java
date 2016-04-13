package com.nmom.soap.svc.cart;

import java.util.List;

import com.nmom.soap.data.model.cart.VCartProductVo;

public interface IVCartProductSvc {
	List<VCartProductVo> getAllCart();
	List<VCartProductVo> getCartByMemId(String mem_id);
}
