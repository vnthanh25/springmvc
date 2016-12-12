package springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@EnableWebMvc
@RequestMapping(value="home")
public class HomeController {

	@ResponseBody
	@RequestMapping(method={RequestMethod.GET})
	public Object index(){
		
		return "index";
	}
	@ResponseBody
	@RequestMapping(value="test", method={RequestMethod.GET})
	public Object test(){
		
		return "test";
	}
}
