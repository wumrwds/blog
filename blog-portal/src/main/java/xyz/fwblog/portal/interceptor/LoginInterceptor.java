package xyz.fwblog.portal.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import xyz.fwblog.manager.pojo.TUser;
import xyz.fwblog.portal.service.SessionService;

public class LoginInterceptor implements HandlerInterceptor {
	@Resource
	private SessionService sessionService;

	/**
	 * 这里要配置一下springmvc.xml,因为拦截器属于springmvc子容器 是注入不进来的，必须专门配置
	 * 
	 * 在Spring根容器中对于SpringMVC容器中的Bean是不可见的， 而在SpringMVC容器中对于Spring根容器中的Bean是可见的
	 */
	@Value("${SSO_LOGIN_URL}")
	private String SSO_LOGIN_URL;

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		TUser user = sessionService.getUserByToken(request, response);

		if (user == null) {
			// redirectURL为回调参数
			response.sendRedirect(SSO_LOGIN_URL + "?redirectURL="
					+ request.getRequestURL());
			return false;
		}

		// 已登录，放行
		return true;
	}

}
