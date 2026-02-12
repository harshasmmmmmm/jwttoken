package com.example.demo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.Student;
import com.example.demo.repository.StudentRepo;

@Service
public class StudentService {

    @Autowired
    private StudentRepo repo;

    // registration
    public void register(Student s) {
        repo.save(s);
    }

    // get all students
    public List<Student> getAllStudents() {
        return repo.findAll();
    }

    // delete by id
    public void deleteById(int id) {
        repo.deleteById(id);
    }

    // get student by id
    public Student getStudentById(int id) {
        return repo.findById(id).orElse(null);
    }

    // update profile
    public void updateProfile(Student s) {
        repo.save(s);
    }

    // login check
    public Student loginCheck(String email, String password) {
        return repo.findByEmailAndPassword(email, password);
    }
}
