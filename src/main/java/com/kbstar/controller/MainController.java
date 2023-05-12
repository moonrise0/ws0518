package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController {
    @RequestMapping("/")
    public String main(Model model){
        model.addAttribute("center", "center");
        return "index";
    }

    @RequestMapping("/men")
    public String mens(Model model){
        model.addAttribute("center", "men");
        return "index";
    }

    @RequestMapping("/women")
    public String womens(Model model){
        model.addAttribute("center", "women");
        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model){
        model.addAttribute("center", "about");
        return "index";
    }

    @RequestMapping("/contact")
    public String contact(Model model){
        model.addAttribute("center", "contact");
        return "index";
    }
}
