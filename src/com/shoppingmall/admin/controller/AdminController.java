package com.shoppingmall.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmall.admin.model.Admin;
import com.shoppingmall.admin.model.Notice;
import com.shoppingmall.admin.service.AdminService;
import com.shoppingmall.member.model.Member;
import com.shoppingmall.product.model.Product;
import com.shoppingmall.product.model.ProductStock;
import com.shoppingmall.product.model.ProductStockHelper;
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

	/* 로그인 기능 */
	@RequestMapping("/login.do")
	public String login(Admin admin, HttpSession session) {

		adminService.login(admin, session);

		return "redirect:/admin/regist.do";
	}

	/* 로그아웃 기능 */
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {

		adminService.logout(session);

		return "redirect:/admin/index.jsp";
	}

	/* 상품등록 기능 */
	@RequestMapping("/regist.do")
	public ModelAndView regist() {

		Map allList = adminService.registProduct();

		ModelAndView mav = new ModelAndView();

		mav.addObject("allList", allList);

		mav.setViewName("admin/regist");

		return mav;
	}

	/* 상품 정보 기입 기능 */
	@RequestMapping("/insert.do")
	public String insert(Product product, HttpServletRequest request) {
		adminService.insert(product, request);
		return "redirect:/admin/list.do";
	}

	/* 상품 리스트 호출 기능 */
	@RequestMapping("/list.do")
	public ModelAndView selectAll(@RequestParam(defaultValue = "") String keyword, HttpServletRequest request)
			throws Exception {

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

		if (currentPage == null) {
			currentPage = "1";
		}

		pb.init(Integer.parseInt(currentPage), list.size(), 10, 10);
		mav.addObject("pb", pb);

		return mav;
	}

	/* 상품 삭제 기능 */
	@RequestMapping("/delete.do")
	public String productDelete(String[] product_id, String[] filename, HttpServletRequest request) {

		adminService.productDelete(product_id, filename, request);

		return "redirect:/admin/list.do";
	}

	/* 이벤트상품 미개발 */
	/*
	 * @RequestMapping("/duplicateEvent") public ModelAndView
	 * duplicateEvent(HttpServletRequest request, int eventinfo_id){ ModelAndView
	 * mav = new ModelAndView();
	 * 
	 * String[] product_id = request.getParameterValues("product_id[]"); List list =
	 * adminService.duplicateEvent(product_id, eventinfo_id); mav.addObject("list",
	 * list);
	 * 
	 * mav.setViewName("admin/duple");
	 * 
	 * return mav; }
	 * 
	 * 
	 * @RequestMapping("/eventRegist.do") public String eventRegist(String[]
	 * product_id, String eventinfo_id){
	 * 
	 * adminService.eventRegist(product_id, eventinfo_id);
	 * 
	 * return "redirect:/admin/event.do"; }
	 * 
	 * @RequestMapping("/eventDelete.do") public String eventDelete(String[]
	 * product_id, int event_id){
	 * 
	 * adminService.eventDelete(product_id, event_id);
	 * 
	 * 
	 * return "redirect:/admin/event.do"; }
	 */

	/* 카테고리 활성화 기능 */
	@RequestMapping("/sub.do")
	public ModelAndView subCategory(TopCategory topCategory) {
		ModelAndView mav = new ModelAndView();

		List list = adminService.getSubCategory(topCategory.getTopcategory_id());
		mav.addObject("sub", list);

		mav.setViewName("admin/sub");
		return mav;
	}

	/* 회원 리스트 호출 기능 */
	@RequestMapping("/member.do")
	public ModelAndView allMember() {
		ModelAndView mav = new ModelAndView();

		List list = adminService.allMember();
		mav.addObject("memList", list);

		mav.setViewName("admin/member");

		return mav;
	}

	/* 공지사항 리스트 호출 기능 */
	@RequestMapping("/notice.do")
	public ModelAndView notice(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		PagingBean pb = new PagingBean();

		List list = adminService.noticeAll();

		mav.addObject("list", list);

		String currentPage = (String) request.getAttribute("currentPage");
		if (currentPage == null) {
			currentPage = "1";
		}

		pb.init(Integer.parseInt(currentPage), list.size(), 10, 10);
		mav.addObject("pb", pb);

		mav.setViewName("admin/notice");

		return mav;
	}

	/* 공지사항 입력 기능 */
	@RequestMapping("/writenotice.do")
	public String writeNotice(Notice notice) {

		adminService.noticeWrite(notice);

		return "redirect:/admin/notice.do";
	}

	/* 공지사항 상세정보 기능 */
	@RequestMapping("/notice_detail.do")
	public ModelAndView detailNotice(int notice_id) {
		ModelAndView mav = new ModelAndView();

		Notice notice = adminService.noticeOne(notice_id);

		mav.addObject("notice", notice);

		mav.setViewName("admin/notice_detail");

		return mav;
	}

	/* 공지사항 삭제 기능 */
	@RequestMapping("/noticeDelete.do")
	public String deleteNotice(int notice_id) {

		adminService.noticeDelete(notice_id);

		return "redirect:/admin/notice.do";
	}

	/* 공지사항 수정 기능 */
	@RequestMapping("/goedit.do")
	public ModelAndView goEdit(int notice_id) {
		ModelAndView mav = new ModelAndView();

		Notice notice = adminService.noticeOne(notice_id);

		mav.addObject("notice", notice);
		mav.setViewName("admin/notice_edit");

		return mav;
	}

	/* 공지사항 수정 기능 */
	@RequestMapping("/editnotice.do")
	public String editNotice(Notice notice) {

		adminService.noticeUpdate(notice);

		return "redirect:/admin/notice.do";
	}

	/* 비로그인시 세션 에러 발생 */
	@ExceptionHandler(DoNotLoginException.class)
	public ModelAndView doNotLogin(DoNotLoginException e) {

		String msg = e.getMessage();
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);

		mav.setViewName("admin/index");

		return mav;
	}

	/* 상품 정보 수정 리스트 기능 */
	@RequestMapping("view.do")
	public String productView(String product_id, Model model) {
		Map allList = adminService.registProduct();

		model.addAttribute("allList", allList);

		model.addAttribute("product", adminService.viewProduct(product_id));

		return "admin/modify";
	}

	/* 상품 정보 수정 기능 */
	@RequestMapping("/modify.do")
	public String productModify(Product product, HttpServletRequest request) {
		adminService.productModify(product, request);
		return "redirect:/admin/list.do";
	}

	/* 회원 리스트 호출 기능 */
	@RequestMapping("/mlist.do")
	public ModelAndView selectAll2(HttpServletRequest request) {
		PagingBean pb = new PagingBean();

		ModelAndView mav = new ModelAndView();

		List mlist = adminService.selectAll2();
		mav.addObject("mlist", mlist);
		mav.setViewName("admin/mlist");

		String currentPage = (String) request.getParameter("currentPage");

		if (currentPage == null) {
			currentPage = "1";
		}

		pb.init(Integer.parseInt(currentPage), mlist.size(), 10, 10);
		mav.addObject("pb", pb);

		return mav;
	}

	/* 회원 탈퇴 기능 */
	@RequestMapping("/memberDelete.do")
	public String memberDelete(String[] member_id, HttpServletRequest request) {

		adminService.memberDelete(member_id);

		return "redirect:/admin/mlist.do";
	}

	/* 회원 정보 변경 정보 호출 기능 */
	@RequestMapping("/memberView.do")
	public String memberView(String member_id, Model model) {
		model.addAttribute("member", adminService.viewMember(member_id));

		return "admin/memberModify";
	}

	/* 회원 정보 변경 기능 */
	@RequestMapping("/memberModify.do")
	public String memberModify(Member member, HttpServletRequest request) {
		System.out.println(member.getMember_id());
		adminService.memberModify(member, request);
		return "redirect:/admin/mlist.do";
	}

	/* 상품 재고 등록,수정 리스트 호출 기능 */
	@RequestMapping("/list2.do")
	public ModelAndView selectAll2(@RequestParam(defaultValue = "") String keyword, HttpServletRequest request)
			throws Exception {
		int count = adminService.countArticle(keyword);

		PagingBean pb = new PagingBean();

		ModelAndView mav = new ModelAndView();

		Map<String, Object> map = new HashMap<String, Object>();

		List<Product> list = adminService.selectAll(keyword);

		mav.addObject("list", list);

		map.put("count", count);
		map.put("keyword", keyword);
		mav.addObject("map", map);
		mav.setViewName("admin/list2");

		String currentPage = (String) request.getParameter("currentPage");

		if (currentPage == null) {
			currentPage = "1";
		}

		pb.init(Integer.parseInt(currentPage), list.size(), 10, 10);
		mav.addObject("pb", pb);

		return mav;
	}

	/* 상품 재고 등록,수정 리스트 호출 기능 */
	@RequestMapping("/stockRegist.do")
	public ModelAndView productStockRegist(int product_id) {
		Product product = adminService.registProductStock(product_id);

		ModelAndView mav = new ModelAndView();

		mav.addObject("product", product);

		mav.setViewName("admin/stockRegist");

		return mav;
	}

	/* 상품 재고 기입 기능 */
	@RequestMapping("/stockInsert.do")
	public String stockInsert(ProductStockHelper productStockHelper, HttpServletRequest request) {
		int stock[] = { productStockHelper.getSize_s(), productStockHelper.getSize_m(), productStockHelper.getSize_l(),
				productStockHelper.getSize_xl(), productStockHelper.getSize_xxl(), productStockHelper.getSize_free() };
		String size[] = { "s", "m", "l", "xl", "xxl", "free" };
		for (int i = 0; i < size.length; i++) {
			adminService.stockInsert(productStockHelper.getProduct_id(), productStockHelper.getColor(), stock[i],
					size[i]);
		}
		return "redirect:/admin/list2.do";
	}

	/* 상품 재고 등록,수정 리스트 호출 기능 */
	@RequestMapping("/stockUpdate.do")
	public ModelAndView productStockUpdate(int product_id) {
		Product product = adminService.registProductStock(product_id);
		List<ProductStock> productStockList = adminService.selectProductStock(product_id);

		ModelAndView mav = new ModelAndView();


		// 재고 색상 개수 파악용
		int stockNumColor = 1;
		String stockColorCheck = productStockList.get(0).getColor();

		for (int i = 1; i < productStockList.size(); i++) {
			if (!stockColorCheck.equals(productStockList.get(i).getColor())) {
				stockNumColor++;
				stockColorCheck = productStockList.get(i).getColor();
			}
		}
		
		//재고 관련 배열 색상 파악
		String[][] stockKind = new String[stockNumColor][7]; 
		stockKind[0][0] = productStockList.get(0).getColor();
		int checking = 0;
		for(int i=1;i<productStockList.size();i++)
		{
			if(!stockKind[checking][0].equals(productStockList.get(i).getColor()))
			{
				checking++;
				stockKind[checking][0] = productStockList.get(i).getColor();
			}
		}
		
		//2차원 배열 재고 추가
		for(int i=0;i<productStockList.size();i++)
		{	
			for(int j=0; j<stockKind.length; j++)
			{
				if(stockKind[j][0].equals(productStockList.get(i).getColor()))
				{
					if(productStockList.get(i).getSize().equals("s"))
					{
						stockKind[j][1] = Integer.toString(productStockList.get(i).getStock());
					}
					else if(productStockList.get(i).getSize().equals("m"))
					{
						stockKind[j][2] = Integer.toString(productStockList.get(i).getStock());
					}
					else if(productStockList.get(i).getSize().equals("l"))
					{
						stockKind[j][3] = Integer.toString(productStockList.get(i).getStock());
					}
					else if(productStockList.get(i).getSize().equals("xl"))
					{
						stockKind[j][4] = Integer.toString(productStockList.get(i).getStock());
					}
					else if(productStockList.get(i).getSize().equals("xxl"))
					{
						stockKind[j][5] = Integer.toString(productStockList.get(i).getStock());
					}
					else if(productStockList.get(i).getSize().equals("free"))
					{
						stockKind[j][6] = Integer.toString(productStockList.get(i).getStock());
					}
				}
			}
		}

		
		mav.addObject("product", product);
		mav.addObject("stockKind", stockKind);
		mav.addObject("stockNumColor", stockNumColor);

		mav.setViewName("admin/stockUpdate");

		return mav;
	}
	
	/* 상품 재고 변경 기능 */
	@RequestMapping("/stockModify.do")
	public String stockModify(String color, String size_s, String size_m, String size_l, String size_xl,String size_xxl,String size_free, int product_id, HttpServletRequest request) {
		int count = 0;
		
		for(int i=0;i<color.length();i++)
		{
			if(color.charAt(i)==',')
				count++;
		}
		
		String[] colorKind = color.split(",");
		String[] size_sKind = size_s.split(",");
		String[] size_mKind = size_m.split(",");
		String[] size_lKind = size_l.split(",");
		String[] size_xlKind = size_xl.split(",");
		String[] size_xxlKind = size_xxl.split(",");
		String[] size_freeKind = size_free.split(",");
		
		String[][] stock = new String[colorKind.length][7];
		
		for(int i=0; i<colorKind.length; i++)
		{
			stock[i][0] = colorKind[i];
			stock[i][1] = size_sKind[i];
			stock[i][2] = size_mKind[i];
			stock[i][3] = size_lKind[i];
			stock[i][4] = size_xlKind[i];
			stock[i][5] = size_xxlKind[i];
			stock[i][6] = size_freeKind[i];
		}
		
		String[] size = {"s","m","l","xl","xxl","free"};
		
		
		for (int i = 0; i < colorKind.length; i++) {
			for(int j=1; j < 7; j++)
			{
				adminService.stockUpdate(product_id, stock[i][0], Integer.parseInt(stock[i][j]), size[j-1]);
			}
		}
		
		return "redirect:/admin/list2.do";
	}
}
