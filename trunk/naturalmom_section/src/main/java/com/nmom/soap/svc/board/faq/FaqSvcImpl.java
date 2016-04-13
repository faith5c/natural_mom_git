package com.nmom.soap.svc.board.faq;

import java.util.List;

import com.nmom.soap.data.dao.board.faq.IFaqDao;
import com.nmom.soap.data.model.board.faq.FaqVo;

public class FaqSvcImpl implements IFaqSvc{
	
	IFaqDao faqDao;
	
	public void setFaqDao(IFaqDao faqDao) {
		this.faqDao = faqDao;
	}

	@Override
	public FaqVo getOneFaq(int faq_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FaqVo> getAllFaq(int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FaqVo> searchFaqTitle(String keyword, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FaqVo> searchFaqContent(String keyword, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FaqVo> searchFaqTitleNContent(String keyword, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addFaq(FaqVo faq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addFaq(String faq_title, String faq_content, String mem_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editFaq(FaqVo faq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editFaq(String faq_title, String faq_content, int faq_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeFaq(FaqVo faq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeFaq(int faq_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
