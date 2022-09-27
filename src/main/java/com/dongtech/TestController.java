package com.dongtech;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {


    //http://localhost:8081/index
    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
