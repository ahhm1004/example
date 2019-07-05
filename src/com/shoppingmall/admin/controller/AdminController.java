package com.shoppingmall.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmall.admin.model.Admin;
import com.shoppingmall.admin.model.Notice;
import com.shoppingmall.admin.service.AdminService;
import com.shoppingmall.member.model.Member;
import com.shoppingmall.product.model.Product;
import com.shoppingmall.product.model.TopCategory;

import common.exception.DoNotLoginException;
import common.page.PagingBean;

/* ������ ������ ���� ��Ʈ�ѷ� */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	String TAG = this.getClass().getName();
	
	@Autowired
	@Qualifier("adminServiceImpl")
	private AdminService adminService;
	
	/* ������ �α��� */
	@RequestMapping("/login.do")
	public String login(Admin admin, HttpSession session){
		
		adminService.login(admin, session);
		
		return "redirect:/admin/regist.do";
	}
	
	/* ������ �α׾ƿ� */
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		
		adminService.logout(session);
		
		return "redirect:/admin/index.jsp";
	}
	
	
	/* ��ǰ��������� */
	@RequestMapping("/regist.do")
	public ModelAndView regist(){
		
		Map allList = adminService.registProduct();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("allList", allList);
		
		mav.setViewName("admin/regist");
		
		return mav;
	}
	
	/* ��ǰ ����ϱ� */
	@RequestMapping("/insert.do")
	public String insert(Product product, String[] panelsize_id, HttpServletRequest request){
		
		adminService.insert(product, panelsize_id, request);
		
		return "redirect:/admin/list.do";
	}
	
	/* ��ǰ ����Ʈ */
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
		mav.setViewName("admin/list");
		
		String currentPage = (String) request.getParameter("currentPage");
		
		if(currentPage == null){
			currentPage = "1";
		}
		
		pb.init(Integer.parseInt(currentPage), list.size(), 10, 10);
		mav.addObject("pb", pb);
		
		return mav;
	}
	
	/* �̺�Ʈ ����Ʈ */
/*	@RequestMapping("/event.do")
	public ModelAndView event(HttpServletRequest request){
		PagingBean pb = new PagingBean();
		
		ModelAndView mav = new ModelAndView();
		// ��ǰ ��ü ��������
		List list = adminService.selectAll();
		mav.addObject("list", list);
		
		// �̺�Ʈ���� ��������
		List eventList = adminService.eventAll();
		mav.addObject("eventList", eventList);
		
		String currentPage = (String) request.getAttribute("currentPage");
		if(currentPage == null){
			currentPage = "1";
		}
		
		pb.init(Integer.parseInt(currentPage), list.size(), 10, 10);
		mav.addObject("pb", pb);
		
		mav.setViewName("admin/event");
		
		return mav;
	}*/
	
/*	 �̺�Ʈ ���� 
	@RequestMapping("/eventSelect.do")
	public ModelAndView eventSelect(int eventinfo_id, HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		PagingBean pb = new PagingBean();
		List list = null;
		
		if(eventinfo_id == -1){ // ��ü ��ȸ ����
			
			// ��ǰ ��ü ��������
			list = adminService.selectAll();
			mav.addObject("list", list);
			
		}else{
			list = adminService.eventSelect(eventinfo_id);
			mav.addObject("list", list);
			mav.addObject("event_id", eventinfo_id);
		}
		
		// �̺�Ʈ���� ��������
		List eventList = adminService.eventAll();
		mav.addObject("eventList", eventList);
		
		String currentPage = (String) request.getAttribute("currentPage");
		if(currentPage == null){
			currentPage = "1";
		}
		
		pb.init(Integer.parseInt(currentPage), list.size(), 10, 10);
		mav.addObject("pb", pb);
		
		mav.setViewName("admin/event");
		
		return mav;
	}*/
	
	/* ��ǰ ���� */
	@RequestMapping("/delete.do")
	public String productDelete(String[] product_id, String[] filename,HttpServletRequest request){
		
		adminService.productDelete(product_id, filename, request);
		
		return "redirect:/admin/list.do";
	}
	
	/* �̺�Ʈ �ߺ���� ���� */
	@RequestMapping("/duplicateEvent")
	public ModelAndView duplicateEvent(HttpServletRequest request, int eventinfo_id){
		ModelAndView mav = new ModelAndView();
		
		String[] product_id = request.getParameterValues("product_id[]");
		List list = adminService.duplicateEvent(product_id, eventinfo_id);
		mav.addObject("list", list);
		
		mav.setViewName("admin/duple");
		
		return mav;
	}
	
	
	/* �̺�Ʈ ��� */
	@RequestMapping("/eventRegist.do")
	public String eventRegist(String[] product_id, String eventinfo_id){
		
		adminService.eventRegist(product_id, eventinfo_id);
		
		return "redirect:/admin/event.do";
	}
	
	/* �̺�Ʈ ���� */
	@RequestMapping("/eventDelete.do")
	public String eventDelete(String[] product_id, int event_id){
		
		adminService.eventDelete(product_id, event_id);
		
		
		return "redirect:/admin/event.do";
	}
	
	/* ����ī�װ� ��� */
	@RequestMapping("/sub.do")
	public ModelAndView subCategory(TopCategory topCategory) {
		ModelAndView mav = new ModelAndView();
		
		List list = adminService.getSubCategory(topCategory.getTopcategory_id());
		mav.addObject("sub", list);
		
		mav.setViewName("admin/sub");
		return mav;
	}
	
	/* ȸ����ü �ҷ����� */
	@RequestMapping("/member.do")
	public ModelAndView allMember(){
		ModelAndView mav = new ModelAndView();
		
		List list = adminService.allMember();
		mav.addObject("memList", list);
		
		mav.setViewName("admin/member");
		
		return mav;
	}
	
	/* �������� ��ü �ҷ����� */
	@RequestMapping("/notice.do")
	public ModelAndView notice(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		PagingBean pb = new PagingBean();
		
		List list = adminService.noticeAll();
		
		mav.addObject("list", list);
		
		String currentPage = (String) request.getAttribute("currentPage");
		if(currentPage == null){
			currentPage = "1";
		}
		
		pb.init(Integer.parseInt(currentPage), list.size(), 10, 10);
		mav.addObject("pb", pb);
		
		mav.setViewName("admin/notice");
		
		return mav;
	}
	
	/* �������� �����ϱ� */
	@RequestMapping("/writenotice.do")
	public String writeNotice(Notice notice){
		
		adminService.noticeWrite(notice);
		
		return "redirect:/admin/notice.do";
	}
	
	/* �������� �󼼺��� */
	@RequestMapping("/notice_detail.do")
	public ModelAndView detailNotice(int notice_id){
		ModelAndView mav = new ModelAndView();
		
		Notice notice = adminService.noticeOne(notice_id);
		
		mav.addObject("notice", notice);
		
		mav.setViewName("admin/notice_detail");
		
		return mav;
	}
	
	/* �������� �����ϱ� */
	@RequestMapping("/noticeDelete.do")
	public String deleteNotice(int notice_id){
		
		adminService.noticeDelete(notice_id);
		
		return "redirect:/admin/notice.do";
	}
	
	/* ������������ �̵� */
	@RequestMapping("/goedit.do")
	public ModelAndView goEdit(int notice_id){
		ModelAndView mav = new ModelAndView();
		
		Notice notice = adminService.noticeOne(notice_id);
		
		mav.addObject("notice", notice);
		mav.setViewName("admin/notice_edit");
		
		return mav;
	}
	
	
	/* �������� �����ϱ� */
	@RequestMapping("/editnotice.do")
	public String editNotice(Notice notice){
		
		adminService.noticeUpdate(notice);
		
		return "redirect:/admin/notice.do";
	}
	
	
	/* �α��� �Ұ� ���� */ 
	@ExceptionHandler(DoNotLoginException.class)
	public ModelAndView doNotLogin(DoNotLoginException e){
		
		String msg = e.getMessage();
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		
		mav.setViewName("admin/index");
		
		return mav;
	}
	
	// ��ǰ ���� ������
	@RequestMapping("view.do")
	public String productView(String product_id, Model model)
	{
		Map allList = adminService.registProduct();
		
		model.addAttribute("allList", allList);
		
		
		model.addAttribute("product", adminService.viewProduct(product_id));
		
		return "admin/modify";
	}
	
	@RequestMapping("/modify.do")
	public String productModify(Product product, String[] panelsize_id, HttpServletRequest request){
		adminService.productModify(product, panelsize_id, request);
		return "redirect:/admin/list.do";
	}
	
	/* ȸ�� ����Ʈ */
	@RequestMapping("/mlist.do")
	public ModelAndView selectAll2(HttpServletRequest request){
		PagingBean pb = new PagingBean();
		
		ModelAndView mav = new ModelAndView();
		
		List mlist = adminService.selectAll2();
		mav.addObject("mlist", mlist);
		mav.setViewName("admin/mlist");
		
		String currentPage = (String) request.getParameter("currentPage");
		
		if(currentPage == null){
			currentPage = "1";
		}
		
		pb.init(Integer.parseInt(currentPage), mlist.size(), 10, 10);
		mav.addObject("pb", pb);
		
		return mav;
	}
	
	/* ��ǰ ���� */
	@RequestMapping("/memberDelete.do")
	public String memberDelete(String[] member_id, HttpServletRequest request){
		
		adminService.memberDelete(member_id);
		
		return "redirect:/admin/mlist.do";
	}
	
	// ��ǰ ���� ������
	@RequestMapping("/memberView.do")
	public String memberView(String member_id, Model model)
	{
		model.addAttribute("member", adminService.viewMember(member_id));
		
		return "admin/memberModify";
	}
	
	@RequestMapping("/memberModify.do")
	public String memberModify(Member member, HttpServletRequest request){
		System.out.println(member.getMember_id());
		adminService.memberModify(member, request);
		return "redirect:/admin/mlist.do";
	}
}
