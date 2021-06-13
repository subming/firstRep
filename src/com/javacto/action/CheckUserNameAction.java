package com.javacto.action;

import com.javacto.po.User;
import com.javacto.service.UserService;
import com.javacto.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 作者：SU
 */
@WebServlet("/checkUserName.do")
public class CheckUserNameAction extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //处理请求编码格式
        req.setCharacterEncoding("UTF-8");
        //处理响映编码格式
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        // 获取jsp传递过来的值
        String userName = req.getParameter("userName");
        String location = req.getParameter("location");
        //1.创建业务层代码
        UserService userService = new UserServiceImpl();
        //2.调用方法
        boolean flag = userService.findUserByName(userName);
        if (flag) {
            out.print("0");
        }else {
            out.print("1");
        }

    }
}