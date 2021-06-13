package com.javacto.test;

import com.javacto.dao.UserDao;
import com.javacto.dao.UserDaoImpl;
import com.javacto.po.User;
import com.javacto.service.UserService;
import com.javacto.service.UserServiceImpl;
import com.javacto.utils.PageInfo;

import java.util.List;

/**
 * describe
 * 作者：曾昭武  adam8831
 */
public class TestUser {




    public static void main(String[] args) {
        UserService userService = new UserServiceImpl();
        //UserDao userDao = new UserDaoImpl();
       /* List<User> list  = userService.queryAll();
        for(User u:list){
            System.out.println(u);
        }*/
       /* User user = userService.login("张三","123456");
        System.out.println(user);*/
       //user.getUserName(),user.getPwd(),user.getSex(),user.getAddress()
       /*User user = new User();
        user.setUserName("abc3");
        user.setPwd("123");
        user.setSex("1");
        user.setAddress("地方");
        userService.addUser(user);*/
       int count = userService.getTotalCount(null);
        System.out.println(count);
        PageInfo pageInfo = new PageInfo();
        pageInfo.setPageNo(2);
        pageInfo.setPageSize(2);
        List<User> list = userService.pageQueryUser(pageInfo,null);
        for (User u : list) {
            System.out.println(u);
        }
    }


}
