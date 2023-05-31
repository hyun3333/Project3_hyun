package com.music.mrs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class LoginFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		/*
		 - 필터의 핵심 메서드! doFilter()는 클라이언트의 요청이 있을 때마다 실행됩니다.
		 - request객체와 response 객체를 넘겨주기 때문에 이를 가지고 요청과 응답을 조작할 수 있습니다.
		 - 그리고 FilterChain을 통해 조작 이후 요청을 원래 목적지인 서블릿으로 전달할 수 있습니다.
		 */
		System.out.println("doFilter 메서드 발동!");
		
		//우리가 평소에 사용하던 타입은 HttpServletRequest 입니다.
		//부모 타입의 ServletRequest를 자식 타입으로 끌어 내리시면 사용이 가능합니다.
		HttpSession session = ((HttpServletRequest)request).getSession();
		String token = (String) (session.getAttribute("accessToken"));
		System.out.println(token);
//		if(token == null) {
//			log.info("회원 권한 없음! 통과 안됨!");
//			HttpServletResponse resp = (HttpServletResponse) response;
//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter out = resp.getWriter();
//			out.print("<script> \r\n");
//			out.print("alert('로그인이 필요한 페이지 입니다.'); \r\n");
//			out.print("location.href='https://accounts.spotify.com/ko/login?continue=https%3A%2F%2Faccounts.spotify.com%2Fauthorize%3Fscope%3Duser-read-private%252Cuser-read-email%26response_type%3Dcode%26redirect_uri%3Dhttp%253A%252F%252Flocalhost%253A80%252Fmrs%252Fcallback%26state%3Dsome-state-value%26client_id%3Dc0bd3bd84efd46f4bc3ccd4100632043%26show_dialog%3Dtrue'; \r\n");
//			out.print("</script> \r\n");
//			out.flush();
//			out.close();
//			return; //로그인 유효성을 통과하지 못했기 때문에 여기서 요청은 강제 종료.
//		}
		
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
