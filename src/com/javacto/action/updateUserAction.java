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
@WebServlet("/updateUser.do")
public class updateUserAction extends HttpServlet {

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
        // 获取请求参数
        String strId = req.getParameter("id");
        Integer id = Integer.parseInt(strId);
        String name = req.getParameter("userName");
        String sex = req.getParameter("sex");
        // 把前端的值存到user对象中
        User user = new User();
        user.setId(id);
        user.setUserName(name);
        user.setSex(sex);
        //1.创建业务层代码
        UserService userService = new UserServiceImpl();
        //2.调用方法
        userService.updateUser(user);
        //修改完后再次查询
        req.getRequestDispatcher("/queryUser.do").forward(req,resp);
    }
}

