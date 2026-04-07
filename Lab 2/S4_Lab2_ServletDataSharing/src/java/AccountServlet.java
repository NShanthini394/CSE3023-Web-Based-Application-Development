import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AccountServlet extends HttpServlet {

    /**
     * Handles the HTTP POST method to display shared account information.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Set the response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter(); 

        // 1. Retrieve the username parameter from the original HTML form 
        String username = request.getParameter("username");

        // 2. Retrieve data shared by LoginServlet using getAttribute
        // Data is passed from LoginServlet during request forwarding.
        String accountType = (String) request.getAttribute("accountType");
        String email = (String) request.getAttribute("email");

        // 3. Generate the HTML response to display the shared data
        out.println("<html><body>"); 
        out.println("<h2>Account Information</h2>"); 
        out.println("<hr>"); 
        out.println("<p><strong>Welcome, " + username + "!</strong></p>"); 
        out.println("<p><b>Email:</b> " + email + "</p>"); 
        out.println("<p><b>Account Type:</b> " + accountType + "</p>");
        out.println("<br>");
        out.println("<a href='login.html'>Logout</a>");
        out.println("</body></html>"); 
    }
}