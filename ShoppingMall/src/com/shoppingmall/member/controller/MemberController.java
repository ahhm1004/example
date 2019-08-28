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
		mav.addObject("msg", "�궗�슜 媛��뒫�븳 �븘�씠�뵒 �엯�땲�떎.");
		mav.addObject("result", "true");

		return mav;
	}

	// 濡쒓렇�씤 �븘�씠�뵒 鍮꾨�踰덊샇 泥댄겕
	@RequestMapping("/loginCheck.do")
	public ModelAndView checkLogin(HttpSession session, Member member) {
		System.out.println(member.getId());
		memberService.checkLogin(member);
		ModelAndView mav = new ModelAndView("shopJSP/checkLoginResult");
		session.setAttribute("id", member.getId());
		mav.addObject("msg", "濡쒓렇�씤 �꽦怨�");
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
		
		String subject = "[AHH-FASHION] �엫�떆 鍮꾨�踰덊샇 諛쒓툒 �븞�궡";
		
		String msg = "";
		
		msg += "<div align = 'center' style = 'border:1px solid black; font-family:verdana'>";
		msg += "<h3 style = 'color: blue;'><strong>" + id;
		msg += "<p>占쌈쏙옙 占쏙옙橘占싫� : <strong>" + newPwd + "</strong></p></div>";
		
		MailUtil.sendMail(email, subject, msg);
		
		return "success";
	}
	
	@RequestMapping("/keywordList.do")
	public ModelAndView selectKeyword(@RequestParam(defaultValue = "") String keyword,HttpServletRequest request) throws Exception{
		
		int count = adminService.countArticle(keyword);
				
		PagingBean pb = new PagingBean();
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Product> list = adminService.selectKeyword(keyword);
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
	
	@RequestMapping("/productList.do")
	public ModelAndView selectAll(HttpServletRequest request) throws Exception{
		
		String subCategory = (String)request.getParameter("subcategory_id");
		String topCategory = (String)request.getParameter("topcategory_id");
		
		System.out.println(subCategory);
		System.out.println(topCategory);
		/* int count = memberService.countSubcategory(Integer.parseInt(subCategory)); */
		
		PagingBean pb = new PagingBean();
		
		ModelAndView mav = new ModelAndView();
		if(subCategory == null) {
			List<Product> list = memberService.selectAll(Integer.parseInt(topCategory));
			mav.addObject("list", list);
			String currentPage = (String) request.getParameter("currentPage");
			
			if(currentPage == null){
				currentPage = "1";
			}
			
			pb.init(Integer.parseInt(currentPage), list.size(), 9, 9);
			mav.addObject("pb", pb);
		}else {
		List<Product> list = memberService.selectAll(Integer.parseInt(subCategory));
		mav.addObject("list", list);
		String currentPage = (String) request.getParameter("currentPage");
		
		if(currentPage == null){
			currentPage = "1";
		}
		
		pb.init(Integer.parseInt(currentPage), list.size(), 9, 9);
		mav.addObject("pb", pb);
		}
		
		mav.setViewName("shopJSP/productList");
		
		return mav;
	}
	
	@RequestMapping("/detail.do")
	public ModelAndView detail(HttpServletRequest request) {
		
		String product_id = (String)request.getParameter("product_id");
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", memberService.detailProduct(Integer.parseInt(product_id)));
		mav.setViewName("shopJSP/detail");
		return mav;
	}
}