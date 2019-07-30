package com.bit.day05;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.Controller;

//�ڵ����� ��Ű�� ���� �ٴ� ������ �����̸��� �������̽��� ��ӹ޾ұ� ����
//�� ���� �ϳ��� ��Ű�� ���� ����� ������ �����ϴ�.
@org.springframework.stereotype.Controller
public class Ex01Controller implements Controller {
	Logger log = LoggerFactory.getLogger(getClass());
	
	
	@Override
	@RequestMapping("/ex01")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("ex01");
		mav.addObject("msg","�޽��� 1");
		return mav;
	}
	
	@RequestMapping("/ex08")
	public String ex08(Model model) {
		model.addAttribute("msg","�޼��� 2");
		return "ex01";
	}
	
	//�ּҿ� ���� �̸��� ���� view �������� �ִٸ� return ���� ��� �ڵ����� ����
	//��� ������ view�� �޶����� (ex. /test/ex06) �������� ã�� ���Ѵ�.
	//Ȯ����� �ƹ� ������� (ex06.bit��� �����ص� �˾Ƽ� ex06 view �������� ã�´�)
	//�޼ҵ� ����� �������.
	@RequestMapping(value="/ex06")
	public void ex06(HttpServletRequest req) {
		req.setAttribute("msg", "�޼��� ����");
		log.debug("ex06 controller...");
	}
	
	//view�� �����ϴ� ���
	@RequestMapping("/ex07")
	public View ex07() {
		return new View() {
			
			@Override
			public void render(Map<String, ?> model, HttpServletRequest request, HttpServletResponse response)
					throws Exception {
				log.debug("ex07 render...");
				//view�� ���� ��������
				PrintWriter out = response.getWriter();
				out.print("test page");
			}
			
			@Override
			public String getContentType() {
				log.debug("ex07 ContentType...");
				return null;
			}
		};
	}

}
