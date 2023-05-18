package com.kbstar.controller;

import com.kbstar.service.AdmService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController  {

    @Value("${http://172.16.21.69:8088}")
    String adminserver;

    @Autowired
    AdmService admService;
    @Autowired
    private BCryptPasswordEncoder encoder;

//    @RequestMapping("/")
//    public String main(Model model) {
//        model.addAttribute("adminserver", adminserver);
//        return "index";
//    }

    @RequestMapping("/")
    public String main(Model model){
        model.addAttribute("center", "center");
        return "index";
    }

    @RequestMapping("/item")
    public String item(Model model){
        model.addAttribute("center", "center");
        return "index";
    }



    @RequestMapping("/about")
    public String about(Model model){
        model.addAttribute("center", "about");
        return "index";
    }

    @RequestMapping("/livechart")
    public String livechart(Model model) {
        model.addAttribute("adminserver", adminserver);
        model.addAttribute("center", "livechart");
        return "index";
    }

    @RequestMapping("/contact")
    public String contact(Model model){
        model.addAttribute("center", "contact");
        return "index";
    }
}
