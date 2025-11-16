package in.javahome.myweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

/**
 * Simple servlet that accepts any username/password and redirects to a dummy feed.
 * This keeps the project structure similar to the original but implements login.
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(jakarta.servlet.http.HttpServletRequest req, jakarta.servlet.http.HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        if (username == null || username.isBlank()) username = "guest";
        // set a simple session attribute
        HttpSession session = req.getSession(true);
        session.setAttribute("user", username);
        // redirect to a very simple feed (we use index.jsp as demo); in real app you'd forward to feed page
        resp.sendRedirect(req.getContextPath() + "/index.jsp");
    }
}
