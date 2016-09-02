package com.alex.app.spring.mvc.controller;

import com.alex.app.spring.mvc.model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by alejandro on 9/1/16.
 */
@Controller
public class HelloController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView printWelcome(UserModel userModel,  BindingResult result) {

        List<UserModel> users = new ArrayList<UserModel>();

        return new ModelAndView("inicio", "users", users);

    }

    @RequestMapping(value = "/hello/{name:.+}", method = RequestMethod.GET)
    public ModelAndView hello(@PathVariable("name") String name) {

        ModelAndView model = new ModelAndView();
        model.setViewName("inicio");
        model.addObject("msg", name);

        UserModel userModel = new UserModel();
        userModel.setLastName("");
        userModel.setFirstName("");
        userModel.setNickName("");
        userModel.setAge(0);
        userModel.setProfession("");

        model.addObject(userModel);

        return model;

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