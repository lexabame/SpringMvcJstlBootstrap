package com.alex.app.spring.mvc.controller;

import com.alex.app.spring.mvc.model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import sun.nio.cs.US_ASCII;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by alejandro on 9/2/16.
 */
@Controller
@RequestMapping("/users")
public class UserController {

    private List<UserModel> users = new ArrayList<UserModel>();

    @RequestMapping("/add")
    public ModelAndView onSubmit(UserModel userModel, BindingResult result){

        users.add(userModel);

        return new ModelAndView("inicio", "users", users);

    }

    @RequestMapping(method = RequestMethod.GET)
    protected UserModel formBackingObject(HttpServletRequest request) throws ServletException {
        UserModel userModel = new UserModel();
        userModel.setLastName("");
        userModel.setFirstName("");
        userModel.setNickName("");
        userModel.setAge(0);
        userModel.setProfession("");
        return userModel;
    }

}
