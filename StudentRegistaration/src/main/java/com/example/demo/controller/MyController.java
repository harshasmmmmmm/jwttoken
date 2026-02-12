package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.demo.model.Student;
import com.example.demo.service.StudentService;

@Controller
public class MyController {

    @Autowired
    private StudentService service;

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/register")
    public String register(Model m) {
        m.addAttribute("student", new Student());
        return "register";
    }

    @PostMapping("/saveform")
    public String saveForm(@ModelAttribute Student s) {
        service.register(s);
        return "redirect:/viewdata";
    }

    @GetMapping("/viewdata")
    public String viewData(Model m) {
        m.addAttribute("list", service.getAllStudents());
        return "viewdata";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam int id) {
        service.deleteById(id);
        return "redirect:/viewdata";
    }

    @GetMapping("/profileedit")
    public String edit(@RequestParam int id, Model m) {
        m.addAttribute("student", service.getStudentById(id));
        return "edit";
    }

    @PostMapping("/saveprofile")
    public String saveProfile(@ModelAttribute Student s) {
        service.updateProfile(s);
        return "redirect:/viewdata";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/logincheck")
    public String loginCheck(@RequestParam String email,
                             @RequestParam String password,
                             Model m) {

        Student s = service.loginCheck(email, password);

        if (s != null) {
            m.addAttribute("student", s);
            return "dashboard";
        }

        return "login";
    }

    @GetMapping("/logout")
    public String logout() {
        return "redirect:/";
    }
}
