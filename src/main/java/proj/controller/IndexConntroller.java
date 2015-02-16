package proj.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexConntroller {
	
//	@Autowired
//	private ProductService productService;

	@RequestMapping(value = "index")
	public String index(Model m) {
		System.out.println("index");
//		m.addAttribute("products", productService.getProducts());
		return "index";
	}
	
	

}
