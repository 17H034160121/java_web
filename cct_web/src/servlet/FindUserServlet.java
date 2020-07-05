package servlet;

import service.FindService;
import service.UserService;
import service.serviceImpl.FindServiceImpl;
import service.serviceImpl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FindUserServlet")
public class FindUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取输入的用户名数据
        String username = request.getParameter("username");

        //调用service查询用户名
        UserService service = new UserServiceImpl();
        String user = service.findUser(username);

        //以json形式返回数据
        response.setContentType("application/json;charset=utf-8");
        response.getWriter().write(user);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
