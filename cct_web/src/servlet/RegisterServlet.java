package servlet;

import service.UserService;
import service.serviceImpl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码格式
        request.setCharacterEncoding("utf-8");
        //获取所有request数据
        Map<String, String[]> parameterMap = request.getParameterMap();

        //调用UserService进行注册操作
        UserService userService = new UserServiceImpl();
        int key = userService.register(parameterMap);

        //判断注册是否成功
        if (key==0){
            request.getRequestDispatcher(request.getContextPath()+"/front/register.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher(request.getContextPath()+"/front/login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
