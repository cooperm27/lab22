package co.grandcircus.lab22;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {
	
	@RequestMapping("/")
	public String showHome() {

		return "index";
	}
	@RequestMapping("/pizza-builder")
	public String showBuilder() {

		return "pizza-builder";
	}
	@RequestMapping("/review-form")
	public String showReview() {

		return "review-form";
	}

	
		@RequestMapping("/pizza-result")
		public String submitOrderForm(Model model, @RequestParam(name = "cheese", required = false) String cheese,@RequestParam(name = "protein", required = false, defaultValue = "none") String protein,
				@RequestParam(name = "toppings", defaultValue = "") List<String> toppings,
				@RequestParam(name = "beverage", defaultValue = "none") String beverage, @RequestParam("name") String name,@RequestParam("size") String size,@RequestParam("crust") String crust,
				@RequestParam("age") Double age, @RequestParam("email") String email, @RequestParam(name = "instructions", defaultValue = "") String instructions)
				{

			
			model.addAttribute("meat", protein);
			model.addAttribute("toppings", toppings);
			model.addAttribute("beverage", beverage);
			model.addAttribute("name", name);
			model.addAttribute("age", age);
			model.addAttribute("email", email);
			model.addAttribute("instructions", instructions);
			model.addAttribute("size", size);
			model.addAttribute("crust", crust);
	
			double small = 7.00;
			double medium = 10.00;
			double large = 12.00;
			double smallTopping = .50;
			double mediumTopping = 1.00;
			double largeTopping = 1.25;
			double glutenFree = 2.00;
			double totalToppings;
			double totalPizza;
			double finalTotal = 0.00;
			double beverageCost = 1.25;
			
			
			if (size.equals("small")) {
				totalToppings = smallTopping*toppings.size();
				totalPizza = totalToppings + small;
				if (protein.equals("none")) {
					finalTotal = totalPizza;
				} else {
					finalTotal = totalPizza + smallTopping;
				}
			} else if (size.contentEquals("medium")) {
				totalToppings = mediumTopping*toppings.size();
				totalPizza= totalToppings + medium;	
				if (protein.equals("none")) {
					finalTotal = totalPizza;
				} else {
					finalTotal = totalPizza + mediumTopping;
				}
			} else {
				totalToppings = largeTopping*toppings.size();
				totalPizza = totalToppings + large;
				if (protein.equals("none")) {
					finalTotal = totalPizza;
				} else {
					finalTotal = totalPizza + largeTopping;
				}
			}
			
			
			if (crust.equals("yes")) {
				finalTotal = finalTotal + glutenFree;
			}
			
			
			if (!beverage.equals("none")) {
				finalTotal = finalTotal + beverageCost;

			}
			

			model.addAttribute("finalTotal", finalTotal);
			model.addAttribute("totalToppings", totalToppings);
		

			return "pizza-result";
		}
		@RequestMapping("/pizza-specials")
		public String specialPizzas(Model model) 
				{
			List<String> hawToppings = new ArrayList<>();
			List<String> supToppings = new ArrayList<>();
			hawToppings.add("Pineapple");
			supToppings.add("Onions");
			supToppings.add("Peppers");
			supToppings.add("Mushrooms");
			supToppings.add("Black Olives");
			model.addAttribute("hawProtein", "Ham");
			model.addAttribute("hawToppings", hawToppings);
			model.addAttribute("hawSize", "Large");
			model.addAttribute("hawCrust", "Regular");
			model.addAttribute("hawCheese", "Provolone");
			model.addAttribute("supProtein", "Pepperoni");
			model.addAttribute("supToppings", supToppings);
			model.addAttribute("supSize", "Large");
			model.addAttribute("supCrust", "Regular");
			model.addAttribute("supCheese", "Provolone");
	
			
			double hawFinalTotal = 13.00;
			double supFinalTotal = 14.00;
			String size = "Large";
			String hawName = "The Hawaiian";
			String hawProtein = "Ham";
			String supName = "The Supreme";
			String supProtein = "Pepperoni";
			

			model.addAttribute("hawFinalTotal", hawFinalTotal);
			model.addAttribute("supFinalTotal", supFinalTotal);
			model.addAttribute("hawName", hawName);
			model.addAttribute("supName", supName);

			return "pizza-specials";
		}
		
		@RequestMapping("/reviews")
		public String submitReviews(Model model, @RequestParam("name") String name, @RequestParam("rating") String rating, @RequestParam("review") String review) {
			model.addAttribute("revName", name);
			model.addAttribute("revRating", rating);
			model.addAttribute("review", review);
			
			return "/reviews";
		}
}

