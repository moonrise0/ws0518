package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Slf4j
@Controller
@RequestMapping("/item")
public class ItemController {
    String dir = "item/";

    @RequestMapping("")
    public String add(Model model){
        model.addAttribute("center", dir+"center");
        return "index";
    }

    @RequestMapping("/all")
    public String all(Model model){
        model.addAttribute("center", dir+"all");
        return "index";

    }


}