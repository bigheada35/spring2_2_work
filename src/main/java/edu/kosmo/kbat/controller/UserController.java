package edu.kosmo.kbat.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.kosmo.kbat.principal.PrincipalDetails;
import edu.kosmo.kbat.service.UserService;
import edu.kosmo.kbat.vo.UserVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Controller
public class UserController {

   //private UserService userService =  new UserService();
   @Autowired	
   private UserService userService;

   @GetMapping("/add/add")
   public void add() {
      log.info("Welcome add");

      System.out.println("----- add");
   }
 
	@GetMapping("/admin/adminHome")
	public void adminHome() {
		System.out.println("----adminHome");
	}  
	
	@GetMapping("/user/userHome")
	public String userHome(@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println("principalDetails : " +principalDetails.getUser());
		System.out.println("----userHome----");
		return "user/userHome";
	}
	
   @GetMapping("/add/addForm")
   public void userForm() {
      log.info("Welcome userForm");

      System.out.println("----- userForm ");
   }

   @PostMapping("/add/addUser")
   public String addUser(UserVO uservo) {
      log.info("post resister");
      System.out.println("----- addUser ");
      userService.addUser(uservo);     
      return "redirect:/";
   }
   
   @GetMapping("/add/addFormAdmin")
   public void addFormAdmin() {
      log.info("Welcome addFormAdmin");
      System.out.println("----- addFormAdmin ");
   }
   @PostMapping("/add/addAdmin")
   public String addAdmin(UserVO uservo) {
      log.info("post resister");
      System.out.println("----- addAdmin ");
      userService.addAdmin(uservo);

      return "redirect:/";
   }
   
   @GetMapping("/test/login")
   public @ResponseBody String testLogin(Authentication authentication, @AuthenticationPrincipal UserDetails userDetails) {	  
	   System.out.println("/test/login===============");
	   
	   PrincipalDetails principalDetails = (PrincipalDetails)authentication.getPrincipal();
	   
	   System.out.println("authentication : " + principalDetails.getUser());
	   System.out.println("userDetails : " + userDetails.getUsername());
	   return "?????? ?????? ????????????";
   }
   
   @GetMapping("/test/oauth/login")
   public @ResponseBody String testOAuthLogin(Authentication authentication, @AuthenticationPrincipal OAuth2User oauth) {	  
	   System.out.println("/test/oauth/login===============");
	   
	   OAuth2User oAuth2User = (OAuth2User)authentication.getPrincipal();

	   System.out.println("authentication : " + oAuth2User.getAttributes());
	   System.out.println("OAuth2User : " + oauth.getAttributes());
	   return "OAuth ?????? ?????? ????????????";
   }
   
   @ResponseBody
   @PostMapping("/add/idCheck")
   public Map<String,Object> idCheck(@RequestBody UserVO userVO) {
	   log.info("idCheck ???????????? ?????? " + userVO);
       int count = 0;
       Map<String, Object> map = new HashMap<String, Object>();

       String member_id = userVO.getMember_id();
       count = userService.idCheck(member_id);
       map.put("idCount", count);

       return map;
   }
   
  
   
/*
	@GetMapping("/pay/import")
	public void import2() {
		System.out.println("----import--1--");
		//return "/pay/import"
	}*/
	
}
