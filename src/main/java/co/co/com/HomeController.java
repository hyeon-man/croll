package co.co.com;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public String home(Model model) throws IOException {
		String URL = "https://lostark.game.onstove.com/Profile/Character/%ED%98%84%EB%A9%98";
		Document document = Jsoup.connect(URL).get();

		Elements nameElement = document.select("span .profile-character-info__name");
		System.out.println(nameElement);
		Char myChar = new Char();
		myChar.setName(nameElement);

		model.addAttribute("item", myChar);

		return "home";
	}
	
}
