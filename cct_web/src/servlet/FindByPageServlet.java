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
import java.util.Map;

@WebServlet("/FindByPageServlet")
public class FindByPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");

        //获取数据
        String currentPage = request.getParameter("currentPage");
        String rows = request.getParameter("rows");
        String goTo = request.getParameter("goTo");
        String type = request.getParameter("type");


        //第一次访问赋值
        if (currentPage==null || "".equals(currentPage)){
            currentPage = "1";
        }
        if (rows==null || "".equals(rows)){
            rows = "5";
        }
        if (goTo==null || "".equals(goTo)){
            goTo = "personPage.jsp";
        }
        if (type==null || "".equals(type)){
            type = "Person";
        }

        //获取分页查询的条件
        Map<String, String[]> condition = request.getParameterMap();

        //调用Service进行数据查询
        FindService service = new FindServiceImpl();
        PageBean pageBean = service.findByPage(currentPage,rows,type,condition);

        //返回PageBean对象并转送到对应jsp
        request.setAttribute("pageBean",pageBean);
        //将查询条件返回到查询的结果页面
        request.setAttribute("condition",condition);

        //转送到查询的结果页面
        request.getRequestDispatcher(request.getContextPath()+"/back/"+goTo).forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
