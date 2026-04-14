import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*Name: Shanthini a/p Nadeson
  Group: K1
  Date: 31/3/2026
  Lab Module: 1
*/
@WebServlet("/GreetingServlet")
public class GreetingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Retrieve the 'name' parameter
        String name = request.getParameter("name");
        
        // 2. Default to 'Guest' if parameter is null or empty
        if (name == null || name.trim().isEmpty()) {
            name = "Guest";
        }
        
        // 3. Set the name as an attribute to pass it to the JSP
        request.setAttribute("userName", name);
        
        // 4. Forward the request to greeting.jsp
        request.getRequestDispatcher("greeting.jsp").forward(request, response);
    }
}