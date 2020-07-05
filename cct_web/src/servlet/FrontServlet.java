package servlet;

import domain.PageBean;
import service.FindService;
import service.serviceImpl.FindServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FrontServlet")
public class FrontServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置request编码
        request.setCharacterEncoding("utf-8");
        //获取经过过滤器前的jsp名
        String name = (String) request.getAttribute("name");

        //根据jsp中的表名进行寻找
        FindService service = new FindServiceImpl();
        PageBean byTable = service.findByTable(name);

        //设置返回一个分页对象,但是这里实现分页有点麻烦就算了.
        request.setAttribute("pageBean",byTable);

        //转发到原本想前往的页面,并传送相关数据
        request.getRequestDispatcher(request.getContextPath()+"/front/"+name+".jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
