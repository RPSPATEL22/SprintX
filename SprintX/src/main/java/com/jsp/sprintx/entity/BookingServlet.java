package com.sprintx.servlet;

import com.sprintx.dao.BookingDAO;
import com.sprintx.model.Booking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/book")
public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId");
        int packageId = Integer.parseInt(request.getParameter("packageId"));

        if (userId != null) {
            Booking booking = new Booking(userId, packageId);
            BookingDAO bookingDAO = new BookingDAO();
            bookingDAO.bookPackage(booking);
            response.sendRedirect("profile.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
