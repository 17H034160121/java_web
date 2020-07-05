package servlet;

import domain.User;
import service.UserService;
import service.serviceImpl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码格式
        request.setCharacterEncoding("utf-8");
        //获取request所有的数据
        Map<String, String[]> parameterMap = request.getParameterMap();

        //调用UserService进行登陆操作
        UserService userService = new UserServiceImpl();
        User user = userService.login(parameterMap);

        //判断用户是否存在,存在则前往后台,否则返回并提示密码错误
        if (user == null){
            request.getRequestDispatcher(request.getContextPath()+"/front/login.jsp").forward(request,response);
        }else {
            //将用户的登陆信息存到session中,为了后台页面的访问限制
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            //登陆成功后先前往风景分页查询的Servlet再到后台界面显示风景分页查询内容
            response.sendRedirect(request.getContextPath()+"/FindByPageServlet");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
