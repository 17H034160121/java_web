package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/front/*")
public class FrontFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //因为使用的一般都是http协议,所以直接用HttpServletRequest进行强转
        HttpServletRequest request = (HttpServletRequest) req;

        //获取请求的路径
        String uri = request.getRequestURI();

        //判断是否是需要数据查找的网页
        if (uri.contains("/index.jsp") || uri.contains("/login.jsp") || uri.contains("/register.jsp")){
            chain.doFilter(req, resp);
        }else {
            //获取uri中jsp名.这里做了一下输入数据的增强
            String name = uri.substring(7, uri.length() - 4);
            request.setAttribute("name",name);

            //转送到查找Servlet获取数据再前往页面
            request.getRequestDispatcher(request.getContextPath()+"/FrontServlet").forward(request,resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
