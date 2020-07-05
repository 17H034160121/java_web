package filter;

import com.sun.deploy.net.HttpRequest;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter("/back/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //因为使用的一般都是http协议,所以直接用HttpServletRequest进行强转
        HttpServletRequest request = (HttpServletRequest) req;

        //获取请求的路径
        String uri = request.getRequestURI();

        //判断特定路径通过
        if(uri.contains("/login.jsp")){
            chain.doFilter(req, resp);
        }else {
            //获取session中的user,判断是否为登陆状态
            Object user = request.getSession().getAttribute("user");
            if (user != null){
                chain.doFilter(req, resp);
            }else {
                request.setAttribute("login_msg","请先登陆再访问");
                request.getRequestDispatcher(request.getContextPath()+"/front/login.jsp").forward(request,resp);
            }
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
