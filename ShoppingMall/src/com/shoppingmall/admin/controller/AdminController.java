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

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	String TAG = this.getClass().getName();
	
	@Autowired
	@Qualifier("adminServiceImpl")
	private AdminService adminService;
	
	/* 濡쒓렇�씤 湲곕뒫 */
	@RequestMapping("/login.do")
	public String login(Admin admin, HttpSession session){
		
		adminService.login(admin, session);
		
		return "redirect:/admin/regist.do";
	}
	
	/* 濡쒓렇�븘�썐 湲곕뒫 */
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		
		adminService.logout(session);
		
		return "redirect:/admin/index.jsp";
	}
	
	/* �긽�뭹�벑濡� 湲곕뒫 */
	@RequestMapping("/regist.do")
	public ModelAndView regist(){
		
		Map allList = adminService.registProduct();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("allList", allList);
		
		mav.setViewName("admin/regist");
		
		return mav;
	}
	
	/* �긽�뭹 �젙蹂� 湲곗엯 湲곕뒫 */
	@RequestMapping("/insert.do")
	public String insert(Product product, HttpServletRequest request){
		
		adminService.insert(product, request);
		
		return "redirect:/admin/list.do";
	}
	
	/* �긽�뭹 由ъ뒪�듃 �샇異� 湲곕뒫 */
	@RequestMapping("/list.do")
	public ModelAndView selectAll(@RequestParam(defaultValue = "") String keyword,HttpServletRequest request) throws Exception{
		
		int count = adminService.countArticle(keyword);
				
		PagingBean pb = new PagingBean();
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Product> list = adminService.selectKeyword(keyword);
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
	
	/* �긽�뭹 �궘�젣 湲곕뒫 */
	@RequestMapping("/delete.do")
	public String productDelete(String[] product_id, String[] filename,HttpServletRequest request){
		
		adminService.productDelete(product_id, filename, request);
		
		return "redirect:/admin/list.do";
	}
	
	/* �씠踰ㅽ듃�긽�뭹 誘멸컻諛� */
	/*@RequestMapping("/duplicateEvent")
	public ModelAndView duplicateEvent(HttpServletRequest request, int eventinfo_id){
		ModelAndView mav = new ModelAndView();
		
		String[] product_id = request.getParameterValues("product_id[]");
		List list = adminService.duplicateEvent(product_id, eventinfo_id);
		mav.addObject("list", list);
		
		mav.setViewName("admin/duple");
		
		return mav;
	}
	
	
	@RequestMapping("/eventRegist.do")
	public String eventRegist(String[] product_id, String eventinfo_id){
		
		adminService.eventRegist(product_id, eventinfo_id);
		
		return "redirect:/admin/event.do";
	}
	
	@RequestMapping("/eventDelete.do")
	public String eventDelete(String[] product_id, int event_id){
		
		adminService.eventDelete(product_id, event_id);
		
		
		return "redirect:/admin/event.do";
	}*/
	
	/* 移댄뀒怨좊━ �솢�꽦�솕 湲곕뒫 */
	@RequestMapping("/sub.do")
	public ModelAndView subCategory(TopCategory topCategory) {
		ModelAndView mav = new ModelAndView();
		
		List list = adminService.getSubCategory(topCategory.getTopcategory_id());
		mav.addObject("sub", list);
		
		mav.setViewName("admin/sub");
		return mav;
	}
	
	/* �쉶�썝 由ъ뒪�듃 �샇異� 湲곕뒫 */
	@RequestMapping("/member.do")
	public ModelAndView allMember(){
		ModelAndView mav = new ModelAndView();
		
		List list = adminService.allMember();
		mav.addObject("memList", list);
		
		mav.setViewName("admin/member");
		
		return mav;
	}
	
	
	/* 怨듭��궗�빆 由ъ뒪�듃 �샇異� 湲곕뒫 */
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
	
	/* 怨듭��궗�빆 �엯�젰 湲곕뒫 */
	@RequestMapping("/writenotice.do")
	public String writeNotice(Notice notice){
		
		adminService.noticeWrite(notice);
		
		return "redirect:/admin/notice.do";
	}
	
	/* 怨듭��궗�빆 �긽�꽭�젙蹂� 湲곕뒫 */
	@RequestMapping("/notice_detail.do")
	public ModelAndView detailNotice(int notice_id){
		ModelAndView mav = new ModelAndView();
		
		Notice notice = adminService.noticeOne(notice_id);
		
		mav.addObject("notice", notice);
		
		mav.setViewName("admin/notice_detail");
		
		return mav;
	}
	
	/* 怨듭��궗�빆 �궘�젣 湲곕뒫 */
	@RequestMapping("/noticeDelete.do")
	public String deleteNotice(int notice_id){
		
		adminService.noticeDelete(notice_id);
		
		return "redirect:/admin/notice.do";
	}
	
	/* 怨듭��궗�빆 �닔�젙 湲곕뒫 */
	@RequestMapping("/goedit.do")
	public ModelAndView goEdit(int notice_id){
		ModelAndView mav = new ModelAndView();
		
		Notice notice = adminService.noticeOne(notice_id);
		
		mav.addObject("notice", notice);
		mav.setViewName("admin/notice_edit");
		
		return mav;
	}
	
	/* 怨듭��궗�빆 �닔�젙 湲곕뒫 */
	@RequestMapping("/editnotice.do")
	public String editNotice(Notice notice){
		
		adminService.noticeUpdate(notice);
		
		return "redirect:/admin/notice.do";
	}
	
	/* 鍮꾨줈洹몄씤�떆 �꽭�뀡 �뿉�윭 諛쒖깮 */
	@ExceptionHandler(DoNotLoginException.class)
	public ModelAndView doNotLogin(DoNotLoginException e){
		
		String msg = e.getMessage();
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		
		mav.setViewName("admin/index");
		
		return mav;
	}
	
	/* �긽�뭹 �젙蹂� �닔�젙 由ъ뒪�듃 湲곕뒫 */
	@RequestMapping("view.do")
	public String productView(String product_id, Model model)
	{
		Map allList = adminService.registProduct();
		
		model.addAttribute("allList", allList);
		
		
		model.addAttribute("product", adminService.viewProduct(product_id));
		
		return "admin/modify";
	}
	
	/* �긽�뭹 �젙蹂� �닔�젙 湲곕뒫 */
	@RequestMapping("/modify.do")
	public String productModify(Product product, HttpServletRequest request){
		adminService.productModify(product, request);
		return "redirect:/admin/list.do";
	}
	
	/* �쉶�썝 由ъ뒪�듃 �샇異� 湲곕뒫 */
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
	
	/* �쉶�썝 �깉�눜 湲곕뒫 */
	@RequestMapping("/memberDelete.do")
	public String memberDelete(String[] member_id, HttpServletRequest request){
		
		adminService.memberDelete(member_id);
		
		return "redirect:/admin/mlist.do";
	}
	
	/* �쉶�썝 �젙蹂� 蹂�寃� �젙蹂� �샇異� 湲곕뒫 */
	@RequestMapping("/memberView.do")
	public String memberView(String member_id, Model model)
	{
		model.addAttribute("member", adminService.viewMember(member_id));
		
		return "admin/memberModify";
	}
	
	/* �쉶�썝 �젙蹂� 蹂�寃� 湲곕뒫 */
	@RequestMapping("/memberModify.do")
	public String memberModify(Member member, HttpServletRequest request){
		System.out.println(member.getMember_id());
		adminService.memberModify(member, request);
		return "redirect:/admin/mlist.do";
	}
}
