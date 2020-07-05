package servlet;

import service.FindService;
import service.serviceImpl.FindServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/FindOnlyServlet")
public class FindOnlyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取数据
        String id = request.getParameter("id");
        String type = request.getParameter("type");

        //调用FindService查询
        FindService service = new FindServiceImpl();
        List l = service.findById(id,type);

        //返回查询到的实体类对象
        request.setAttribute("data", l.get(0));
        request.getRequestDispatcher(request.getContextPath()+"/back/"+type.toLowerCase()+"Form.jsp")
                .forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
