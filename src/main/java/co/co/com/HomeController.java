package co.co.com;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class HomeController {
    @RequestMapping(value = "/")
    public String home() {

        return "home";
    }

    @PostMapping("/char")
    public String searchChar(Char myChar, Model model) throws IOException {
        String URL = "https://lostark.game.onstove.com/Profile/Character/" + myChar.getName();
        Connection conn = Jsoup.connect(URL);
        Document document = conn.get();

        myChar.setName(document.select(".profile-character-info__name").text());
        myChar.setServer(document.select(".profile-character-info__server").text());
        myChar.setJob(document.select(".profile-character-info__img").attr("alt"));
        myChar.setInfoTitle(document.select(".game-info__title").text());
        myChar.setLevel(document.select(".level-info2__expedition").text());
        String 칭호 = document.select(".game-info__title").text();
        myChar.setInfoTitle(칭호.substring(2));
        model.addAttribute("item", myChar);

        return "char";
    }
}

