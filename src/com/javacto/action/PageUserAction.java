package com.javacto.action;

import com.javacto.po.User;
import com.javacto.service.UserService;
import com.javacto.service.UserServiceImpl;
import com.javacto.utils.PageInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 作者：SU
 */
@WebServlet("/pageQueryUser.do")
public class PageUserAction extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //处理请求编码格式
        req.setCharacterEncoding("UTF-8");
        //处理响映编码格式
        resp.setContentType("text/html;charset=UTF-8");

        // 1.获取当前页
        String curNo = req.getParameter("pageNo");
        Integer pageNo = 1;
        // 这里必须判断 curNo 是否为空
        if (null!=curNo) {
            // 如果不为空则赋值
            pageNo=Integer.parseInt(curNo);
        }
        // 2.把结果存入PageInfo对象中
        PageInfo infoSbq = new PageInfo();
        infoSbq.setPageNo(pageNo);
        //3.创建业务层代码
        UserService userService = new UserServiceImpl();
        //4.调用查询所有方法
        List<User> list = userService.pageQueryUser(infoSbq,null);
        // 5. 查询中条数
        int count = userService.getTotalCount(null);
        // 6.必须把总条数存入PageInfo中
        infoSbq.setTotalCount(count);

        //7.把结果存在HttpServletRequest 对象中
        req.setAttribute("sbqSbq",list);
        // 必须把PageInfo也存入HttpServletRequest对象中
        req.setAttribute("info",infoSbq);
        // req.setAttribute("这是随便取给我个这个定义一个变量名", 这个必需是上面的变量名);

        //8.跳转到jsp
        req.getRequestDispatcher("/userListPage.jsp").forward(req,resp);
    }
}
