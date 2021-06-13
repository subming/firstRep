package com.javacto.action;

import com.javacto.po.User;
import com.javacto.service.UserService;
import com.javacto.service.UserServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 作者：SU
 */
public class ListToJson extends HttpServlet {

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

        PrintWriter out = resp.getWriter();
        UserService userService = new UserServiceImpl();
        User user = userService.findUserByID(10);

        // 把User对象转为json格式
        JSONObject jsonObject = JSONObject.fromObject(user);
        out.print(jsonObject);

        List<User> list = userService.queryAll();
        JSONArray jsonArray = JSONArray.fromObject(list);
        out.print(jsonArray);
    }
}