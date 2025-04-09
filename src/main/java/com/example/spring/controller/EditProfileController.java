package com.example.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.spring.Entity.UserProfile;
import com.example.spring.Services.UserProfileService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class EditProfileController {
	    @Autowired
	    private UserProfileService userprofileservice;

	    // Show edit profile page (GET request)
	    @GetMapping("/edit")
	    public String showEditProfile(Model model, HttpSession session) {
	        UserProfile currentUser = (UserProfile) session.getAttribute("user");

	        if (currentUser == null) {
	            return "redirect:/login"; // If user not logged in
	        }

	        model.addAttribute("user", currentUser);
	        return "editProfile"; // editProfile.jsp or .html
	    }

	    @PostMapping("/update")
	    public String updateProfile(@ModelAttribute("user") UserProfile updatedUser, HttpSession session) {
	        UserProfile currentUser = (UserProfile) session.getAttribute("user");

	        if (currentUser == null) {
	            return "redirect:/login";
	        }

	        // Set ID to ensure correct user is updated
	        updatedUser.setId(currentUser.getId());

	        boolean isUpdated = userprofileservice.updateUser(updatedUser);

	        if (isUpdated) {
	            session.setAttribute("user", updatedUser); // Update session user
	            session.setAttribute("message", "Profile updated successfully!");
	            return "redirect:/user/profile"; // Redirect to profile page
	        } else {
	            session.setAttribute("error", "Failed to update profile. Please try again!");
	            return "redirect:/user/edit";
	        }
	    }

}
