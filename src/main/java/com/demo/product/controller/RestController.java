package com.demo.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.product.dto.ProductDto;
import com.demo.product.model.Product;
import com.demo.product.model.User;
import com.demo.product.remote.ProductServiceRemote;
import com.demo.product.service.UserService;

@Controller
public class RestController {
    private ProductDto dto = new ProductDto(); // Initialize the DTO at the class level.

    @Autowired
    private UserService userService;

    @Autowired
    private ProductServiceRemote productRemote;

    /**
     * Save a user after registration.
     */
    @PostMapping("/save-user")
    public String saveUser(@ModelAttribute User user, RedirectAttributes redirectAttributes) {
        // Save user logic here
        boolean isSaved = userService.saveUser(user); // Example service call

        if (isSaved) {
            redirectAttributes.addFlashAttribute("successmessage", "Registration successful!");
            return "redirect:/";
        } else {
            redirectAttributes.addFlashAttribute("errormessage", "Registration failed. Please try again.");
        }

        // Redirect to the register page to prevent resubmission on refresh
        return "register";
    }

    /**
     * Validate a user's login credentials.
     */
    @PostMapping("/validateUser")
    public String validateUser(@RequestParam String username, @RequestParam String password, RedirectAttributes redirectAttributes) {
        System.out.println("Received username: " + username + ", password: " + password);
        if (userService.authenticateUser(username, password)) {
            return "redirect:/product";
        } else {
            redirectAttributes.addFlashAttribute("errormessage", "Invalid credentials. Please try again.");
            return "redirect:/";
        }
    }

    /**
     * Save a product and redirect to the product creation screen with values pre-filled.
     */
    @PostMapping("/saveProduct")
    public String saveProduct(
            @RequestParam String skuCode,
            @RequestParam String skuName,
            @RequestParam Integer skuQuantity,
            @RequestParam Integer mrp,
            @RequestParam String skuType,
            @RequestParam String bin,
            @RequestParam String binType,
            @RequestParam String lot,
            @RequestParam String binStatus,
            @RequestParam String skuStatus,
            RedirectAttributes redirectAttributes) {

        // Populate the DTO
        dto.setSkuCode(skuCode);
        dto.setSkuName(skuName);
        dto.setSkuQuantity(skuQuantity);
        dto.setMrp(Double.valueOf(mrp));
        dto.setSkuType(skuType);
        dto.setBin(bin);
        dto.setBinType(binType);
        dto.setLot(lot);
        dto.setBinStatus(binStatus);
        dto.setSkuStatus(skuStatus);
        try{
        	// Create and save the Product object
            Product product = new Product();
            product.setSkuCode(skuCode);
            product.setSkuName(skuName);
            product.setSkuQuantity(skuQuantity);
            product.setMRP(Double.valueOf(mrp));
            product.setSkuType(skuType);
            product.setBin(bin);
            product.setBinType(binType);
            product.setLot(lot);
            product.setBinStatus(binStatus);
            product.setSkuStatus(skuStatus);
            
            productRemote.saveProduct(product);

            System.out.println("Saved successfully");
            
            dto.setSuccessMsg("Product saved successfully !");
            
            redirectAttributes.addFlashAttribute("dto", dto);
        }catch (Exception e) {
			e.printStackTrace();
			dto =new ProductDto();
			dto.setErrorMsg("server enconter error");
			redirectAttributes.addFlashAttribute("dto", dto);
		}
        

        // Add the DTO to the redirect attributes
       

        // Redirect to the product creation screen
        return "redirect:/productcrt";
    }

    /**
     * Display the product creation screen and populate values from the DTO if available.
     */
    @RequestMapping(value = "/productcrt", method = {RequestMethod.GET, RequestMethod.POST})
    public String productCreateScreen(Model model) {
    	return "productcrt"; // Name of your JSP file
    }

    // Getter and Setter for DTO
    public ProductDto getDto() {
        return dto;
    }

    public void setDto(ProductDto dto) {
        this.dto = dto;
    }
}
