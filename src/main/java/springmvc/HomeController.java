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

	@RequestMapping(method={RequestMethod.GET})
	public Object index(){
		
		return "index";
	}
	
	@RequestMapping(value="test", method={RequestMethod.GET})
	public Object test(){
		
		return "test";
	}
	
	@RequestMapping(value="fullcalendar", method={RequestMethod.GET})
	public Object fullCalendar(){
		return "fullcalendar";
	}
	
	@RequestMapping(value="uicalendar", method={RequestMethod.GET})
	public Object uiCalendar(){
		return "uicalendar";
	}
	
	@RequestMapping(value="googlecalendar", method={RequestMethod.GET})
	public Object googleCalendar(){
		return "googlecalendar";
	}
}
