package servlet;

import service.AddOrUpdateService;
import service.serviceImpl.AddOrUpdateServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/AddOrUpdateServlet")
public class AddOrUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码格式
        request.setCharacterEncoding("utf-8");

        String doMainName = null;
        String type = null;

        //获取访问时的路径
        String header = request.getHeader("referer");
        int len = header.length();
        String key = header.substring(len-3,len);
        int start = header.indexOf("=",42)+1;

        if (!"jsp".equals(key)){
            type = header.substring(start, len);
            doMainName = type.toLowerCase();
        }else {
            //截取其中表示数据类型的部分,小写的实体类名
            doMainName = header.substring(27, len - 8);
            //将名字转换到开头大写的实体类名
            type = doMainName.substring(0, 1).toUpperCase().concat(doMainName.substring(1));
        }

        //获取表单数据数组
        Map<String, String[]> parameterMap = request.getParameterMap();

        //调用addService并传输map数据
        AddOrUpdateService service = new AddOrUpdateServiceImpl();
        service.addOrUpdate(parameterMap, type);

        //重定向回数据界面
        response.sendRedirect(request.getContextPath() + "/FindByPageServlet?goTo=" +
                doMainName + "Page.jsp&type=" + type);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
