package com.project.adventure.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.adventure.repository.CartDao;
import com.project.adventure.util.Paging;
import com.project.adventure.vo.Cart;
import com.project.adventure.vo.Order;
@Service
public class CartServiceImpl implements CartService {
@Autowired
private CartDao cartDao;
	@Override
	public List<Cart> cartList(String pageNum,String mid) {
		Paging paging = new Paging(cartDao.totCntCart(mid),pageNum, 10, 10);
		Cart cart = new Cart();
		cart.setStartRow(paging.getStartRow());
		cart.setEndRow(paging.getEndRow());
		return cartDao.cartList(mid);
	}

	@Override
	public int totCntCart(String mid) {
		return cartDao.totCntCart(mid);
	}

	@Override
	public Cart getDetailCart(int cid) {
		return cartDao.getDetailCart(cid);
	}
	
	@Override
	public int registerCart1(Cart cart) {	
		switch (cart.type) {
	    case 0:

	    	cart.setPrice1(cart.p1 * 53000);
	    	cart.setPrice2(cart.p2 * 30000);
	    	cart.setType(0);
	        break;
	    case 1:

	    	cart.setPrice1(cart.p1 * 110000);
	    	cart.setPrice2(cart.p2 * 70000);
	    	cart.setType(1);
	        break;
		}
		return cartDao.registerCart1(cart);
	}
	
	@Override
	public int registerCart2(Cart cart, String[] attracion) {	
		switch (cart.type) {
	    case 0:

	    	cart.setPrice1(cart.p1 * 53000);
	    	cart.setPrice2(cart.p2 * 30000);
	    	cart.setType(0);
	        break;
	    case 1:

	    	cart.setPrice1(cart.p1 * 110000);
	    	cart.setPrice2(cart.p2 * 70000);
	    	cart.setType(1);
	        break;
		}
		int result = 0;
		for(String aname : attracion) {
			cart.setAtname1(attracion[0]);	
			cart.setAtname2(attracion[1]);
			cart.setAtname3(attracion[2]);
		}
		return cartDao.registerCart2(cart);
	}

	@Override
	public int modifyBCart(Cart cart) {
		return cartDao.modifyBCart(cart);
	}

	@Override
	public int deleteCart(int[] cid) {
		int result = 0;
		for(int id : cid) {
			result += cartDao.deleteCart(id);
		}
		return result;
	}

	@Override
	public List<Cart> toOrderList(int[] cid) {		
		return cartDao.toOrderList(cid);
	}

	@Override
	public void updateResult(int[] cid) {
		cartDao.updateResult(cid);
	}

	@Override
	public Cart getTicketAmountAndPrice(int[] cid) {
		return cartDao.getTicketAmountAndPrice(cid);
	}

	@Override
	public void cidsAdd(int[] cid, HttpSession session) {
		ArrayList<Integer> cids = new ArrayList<Integer>();
		for (int id : cid) {
			cids.add(id);
		}
		session.setAttribute("cids", cids);
	}

	@Override
	public int autoDeleteCart(int cid) {
		return cartDao.deleteCart(cid);
	}
	
	

	
}
