package proj.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import proj.domain.Customer;
import proj.domain.Login;
import proj.service.ProductService;
import proj.service.SigninService;

@Controller
public class LoginController {

	@Autowired
	private ProductService productService;
	@Autowired
	private SigninService signinService;

	@RequestMapping("/signin")
	public String signin(Model m) {
		System.out.println("signin");
		Login login = new Login();
		m.addAttribute("login", login);
		return "signin";
	}

	@RequestMapping(value = "login")
	public String login(@ModelAttribute("login") Login login,
			HttpSession seeion, Model m) {
		System.out.println("login ac:" + login.getEmail() + "  pw:"
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
