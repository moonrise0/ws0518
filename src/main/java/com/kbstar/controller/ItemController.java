package com.kbstar.controller;



import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/item")
public class ItemController {


    String dir = "item/";

    @Value("${uploadimgdir}")
    String imgdir;

    @RequestMapping("/")
    public String item(Model model){
        model.addAttribute("center","item");
        return "index";
    }

}