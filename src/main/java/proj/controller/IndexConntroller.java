package proj.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import proj.service.ProductService;

@Controller
public class IndexConntroller {
	
	private static final Logger logger = Logger.getLogger(IndexConntroller.class);
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "index")
	public String index(Model m) {
		logger.debug("index");
//		System.out.println("index");
		m.addAttribute("products", productService.getProducts());
		return "index";
	}
	
	@RequestMapping("/")
	public String index2(Model m) {
		logger.debug("index");
		m.addAttribute("products", productService.getProducts());
		return "index";
	}
	
	

}
