package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public String login(String name, String password, HttpSession session,
			String yzmmm) {
//		String sessionKa = (String) session.getAttribute("kaptcha");
//		if (sessionKa.equalsIgnoreCase(yzmmm)) {
			
			User user = userService.login(name, password);
			System.out.println(user);
			if (user != null) {
				session.setAttribute("user", user);
				return "redirect:getAll.do";
			} else {
				return "login";

			}

		/*} else {

			return "login";

		}*/
	}
	@RequestMapping("/reg")
	public String reg(User user,String yzmmm,HttpSession session,Map map){
//		String sessionKa = (String) session.getAttribute("kaptcha");
//		if (sessionKa.equalsIgnoreCase(yzmmm)) {
			user.setQuestion("efeawfwa");
			user.setAnswer("dwadwadw");
			userService.regist(user);
			return "login";
			
//		}else{
//
//			return "regist";
//		}
		
	}
}
