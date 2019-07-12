package com.shoppingmall.member.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmall.admin.service.AdminService;
import com.shoppingmall.mail.MailUtil;
import com.shoppingmall.member.model.Member;
import com.shoppingmall.member.service.MemberService;
import com.shoppingmall.product.model.Product;

import common.exception.DidNotCheckLoginException;
import common.page.PagingBean;

@Controller
@RequestMapping("/shopJSP")
public class MemberController {
	String tag = this.getClass().getName();
	
	
	@Autowired
	@Qualifier("memberServiceImpl")
	private MemberService memberService;
	
	@Autowired
	@Qualifier("adminServiceImpl")
	private AdminService adminService;

	@RequestMapping("/registForm.do")
	public String regist(Member member) {
		memberService.insert(member);

		return "shopJSP/loginForm";
	}

	@RequestMapping("/checkId.do")
	public ModelAndView checkId(Member member, HttpServletResponse httpServletResponse) {
		List list = memberService.selectId(member);
		ModelAndView mav = new ModelAndView("shopJSP/checkLoginResult");
		mav.addObject("msg", "사용 가능한 아이디 입니다.");
		mav.addObject("result", "true");

		return mav;
	}

	// 로그인 아이디 비밀번호 체크
	@RequestMapping("/loginCheck.do")
	public ModelAndView checkLogin(HttpSession session, Member member) {
		System.out.println(member.getId());
		memberService.checkLogin(member);
		ModelAndView mav = new ModelAndView("shopJSP/checkLoginResult");
		session.setAttribute("id", member.getId());
		mav.addObject("msg", "로그인 성공");
		mav.addObject("result", "true");

		return mav;
	}

	@ExceptionHandler(DidNotCheckLoginException.class)
	public ModelAndView handle(DidNotCheckLoginException e) {
		ModelAndView mav = new ModelAndView("shopJSP/checkLoginResult");
		mav.addObject("msg", e.getMessage());
		mav.addObject("result", "false");

		return mav;
	}

	@RequestMapping("/loginOut.do")
	public String loginOut(HttpSession session) {
		session.setAttribute("id", null);
		return "shopJSP/index";
	}

	@RequestMapping("/myPage.do")
	public ModelAndView selectOne(HttpSession session) {
		String id = (String) session.getAttribute("id");

		ModelAndView mav = new ModelAndView("shopJSP/myPage");
		Member member = memberService.selectOne(id);

		mav.addObject("member", member);

		return mav;
	}
	
	@RequestMapping(value = "/findingId.do" , method = RequestMethod.POST)
	public @ResponseBody String findingId(@ModelAttribute Member member, Model model , HttpServletResponse response) throws Exception {

		ArrayList<String> idList = memberService.findId(member);
		
		String findId = ""+ idList;

		System.out.println(findId);

		return findId;
	}
	
	@RequestMapping(value = "/findingPw.do" , method = RequestMethod.POST)
	@ResponseBody 
	public String findingPw(String email, String id, HttpSession session) throws Exception {

		String newPwd = MailUtil.getNewPwd();
		memberService.changePwd(newPwd, id);
		
		String subject = "[AHH-FASHION] 임시 비밀번호 발급 안내";
		
		String msg = "";
		
		msg += "<div align = 'center' style = 'border:1px solid black; font-family:verdana'>";
		msg += "<h3 style = 'color: blue;'><strong>" + id;
		msg += "<p>�ӽ� ��й�ȣ : <strong>" + newPwd + "</strong></p></div>";
		
		MailUtil.sendMail(email, subject, msg);
		
		return "success";
	}
	
	@RequestMapping("/list.do")
	public ModelAndView selectAll(@RequestParam(defaultValue = "") String keyword,HttpServletRequest request) throws Exception{
		
		int count = adminService.countArticle(keyword);
				
		PagingBean pb = new PagingBean();
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Product> list = adminService.selectAll(keyword);
		mav.addObject("list", list);
		
		map.put("count", count);
		map.put("keyword", keyword);
		mav.addObject("map", map);
		mav.setViewName("shopJSP/list");
		
		String currentPage = (String) request.getParameter("currentPage");
		
		if(currentPage == null){
			currentPage = "1";
		}
		
		pb.init(Integer.parseInt(currentPage), list.size(), 9, 9);
		mav.addObject("pb", pb);
		
		return mav;
	}
}