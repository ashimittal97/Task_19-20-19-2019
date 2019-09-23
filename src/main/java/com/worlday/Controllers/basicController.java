package com.worlday.Controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.worlday.Models.Student;
import com.worlday.Services.StudentServices;

@Controller
public class basicController {

	@Autowired
	private StudentServices studentServices;

	@RequestMapping("showDetails")
	public ModelAndView showdetails(@Valid @ModelAttribute("save") Student student, BindingResult bindingResult) {
		Boolean result = bindingResult.hasErrors();

		if (!result) {

			studentServices.studentEntry(student);
			ModelAndView modelAndView = new ModelAndView("show");
			modelAndView.addObject("student", student);
			modelAndView.addObject("message", "Successfully Inserted..!!!");
			return modelAndView;
		} else {
			ModelAndView modelAndView = new ModelAndView("dataEntry");
			return modelAndView;
		}
	}

	@RequestMapping("removeDetails")
	public ModelAndView removeStudent(@Valid @RequestParam("rno") int rno) {
		Student student = studentServices.searchStudent(rno);
		ModelAndView modelAndView = new ModelAndView("show");
		modelAndView.addObject("student", student);
		studentServices.deleteStudent(rno);
		modelAndView.addObject("message", "Successfully Deleted..!!!");
		return modelAndView;
	}

	@RequestMapping("searchPage")
	public ModelAndView searchDeatils(@Valid @RequestParam("rno") int rno) {
		Student student = studentServices.searchStudent(rno);
		ModelAndView modelAndView = new ModelAndView("Fetch");
		modelAndView.addObject("student", student);
		return modelAndView;

	}

	@RequestMapping("allstudent")
	public ModelAndView getAllStudents() {
		List<Student> students = studentServices.viewAllStudents();
		ModelAndView modelAndView = new ModelAndView("viewall");
		modelAndView.addObject("students", students);
		return modelAndView;
	}

	@RequestMapping("update")
	public ModelAndView updateStudent(@Valid @RequestParam("rno") int rno) {
		Student student = studentServices.searchStudent(rno);

		ModelAndView modelAndView = new ModelAndView("Update");
		modelAndView.addObject("student", student);

		return modelAndView;

	}

	@RequestMapping("Updated")
	public ModelAndView UpdatedInfo(@Valid @ModelAttribute("info") Student studentUpdate) {
		studentServices.updateStudent(studentUpdate);
		ModelAndView modelAndView = new ModelAndView("Updated");
		modelAndView.addObject("student", studentUpdate);

		return modelAndView;
	}

	@RequestMapping("updateStudent")
	public String Update() {
		return "Enter";
	}

	@RequestMapping("inputpage")
	public ModelAndView showInputForm() {
		ModelAndView mv = new ModelAndView("dataEntry");
		mv.addObject("save", new Student());
		return mv;
	}

	@RequestMapping("search")
	public String Search() {
		return "searchPage";
	}

	@RequestMapping("remove")
	public String Remove() {
		return "removeDetails";
	}

}
