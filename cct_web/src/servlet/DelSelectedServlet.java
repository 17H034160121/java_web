package servlet;

import service.DelSelectedService;
import service.serviceImpl.DelSelectedServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DelSelectedServlet")
public class DelSelectedServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取删除的id数据
        String[] ids = request.getParameterValues("uid");
        String type = request.getParameter("type");

        //获取删除服务,并传入id数组
        DelSelectedService service = new DelSelectedServiceImpl();
        service.delSelected(ids, type);

        //通过request获取来时的路径,重定向回来时的路径,因为访问数据都需要经过Servlet自己转送会很麻烦,
        String referer = request.getHeader("Referer");
        response.sendRedirect(referer);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
