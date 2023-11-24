package com.project.adventure.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.adventure.repository.FaqDao;
import com.project.adventure.vo.Faq;
@Service
public class FaqSeviceImpl implements FaqService {
	@Autowired
	private FaqDao faqDao;
	@Override
	public List<Faq> faqList(Faq faq) {
		return faqDao.faqList(faq);
	}

	@Override
	public int faqModify(Faq faq) {
		return faqDao.faqModify(faq);
	}

	@Override
	public int faqinsert(Faq faq) {	
		return faqDao.faqinsert(faq);
	}

}
