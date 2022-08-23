package com.java.ajax;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/ajax2")
public class Ajax2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ajax2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BufferedReader br = request.getReader();
		String requestData = br.readLine();
		System.out.println(requestData);
		
		Gson gson = new Gson();
		Userdto userdto = gson.fromJson(requestData, Userdto.class);
		System.out.println(userdto);
		
		User user = new User();
		user.setId(1);
		user.setUsername("love");
		user.setPassword("1234");
		user.setPhone("01012341234");
		
		String userJson = gson.toJson(user);
		PrintWriter writer = response.getWriter();
		writer.print(userJson);
		writer.close();
		
	}
}
