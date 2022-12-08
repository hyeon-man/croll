package co.co.com.controller;

import java.io.IOException;


import co.co.com.model.ApiCharacter;
import co.co.com.model.ApiTest;
import co.co.com.model.Character;
import co.co.com.util.Croll;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;


@Controller
public class HomeController {


    @RequestMapping(value = "/")
    public String home() {

        return "home";
    }

    @ResponseBody
    @GetMapping("/char/{charName}")
    public Character searchChar(@PathVariable String charName, Character character, Croll croll) throws IOException {

        character.setName(charName);
        croll.getChar(character);

        System.out.println("!<-- -->" + character.getJob() +  character.getLevel() + "<!-- -->");

        return character;
    }

    @ResponseBody
    @RequestMapping("/123")
    public ApiCharacter  apiTest(){
        ApiTest api = new ApiTest();
        String name = "현맨";

        ApiCharacter apiCharacter = api.getApiCharacter(name);

        return apiCharacter;
    }
}

