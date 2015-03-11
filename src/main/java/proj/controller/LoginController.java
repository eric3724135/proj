package proj.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import proj.domain.Customer;
import proj.domain.Login;
import proj.service.ProductService;
import proj.service.SigninService;

@Controller
public class LoginController {

	private static final Logger logger = Logger
			.getLogger(LoginController.class);

	@Autowired
	private ProductService productService;
	@Autowired
	private SigninService signinService;

	@RequestMapping("/signin")
	public String signin(Model m) {
		logger.debug("signin");
		Login login = new Login();
		m.addAttribute("login", login);
		return "signin";
	}

	@RequestMapping(value = "login")
	public String login(@Valid @ModelAttribute("login") Login login,
			BindingResult result, HttpSession seeion, Model m) {
		
		if (result.hasErrors()) {
			//驗證不過
			return "signin";
		}

		logger.debug("login ac:" + login.getEmail() + "  pw:"
				+ login.getPassword());
		Customer customer = signinService.loginNgetCustomer(login);
		if (customer != null) {
			m.addAttribute("products", productService.getProducts());
			// m.addAttribute("customer", customer);
			seeion.setAttribute("customer", customer);
			return "index";
		} else {
			return "signin";
		}
	}

	@RequestMapping("/logout")
	public String logout(Model m, HttpSession seeion) {
		System.out.println("logout");
		m.addAttribute("products", productService.getProducts());
		seeion.removeAttribute("customer");
		return "index";
	}

}
