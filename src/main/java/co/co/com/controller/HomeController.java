package co.co.com.controller;

import java.io.IOException;


import co.co.com.model.Character;
import co.co.com.util.Croll;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


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

        return character;
    }
}

