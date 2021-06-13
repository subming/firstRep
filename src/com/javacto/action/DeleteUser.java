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

/**
 * 作者：SU
 */
@WebServlet("/deleteUser.do")
public class DeleteUser extends HttpServlet {

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
        // 获取jsp传递过来的值
        String strId = req.getParameter("id");
        Integer id = Integer.parseInt(strId);
        //1.创建业务层代码
        UserService userService = new UserServiceImpl();
        //2.调用方法
        userService.deleteUser(id);
        //4.跳转到jsp
        req.getRequestDispatcher("/queryUser.do").forward(req,resp);
    }
}
