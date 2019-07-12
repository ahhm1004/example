package common.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginCheckInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) 	throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session != null){
			Object admin = session.getAttribute("admin");
			if(admin != null){
				return true;
			}
		}
		response.sendRedirect(request.getContextPath()+"/admin/regist.jsp");
		
		return true;
	}
}
