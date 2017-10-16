import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "pageViewCounter", urlPatterns = "/count")
public class pageViewCounter extends HttpServlet {
       private int counter;
       public void startCounter() {
           counter = 0;
       }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // is the request parameter present?
        if (request.getParameter("reset") != null) {
            counter = 0;
        }

        counter++;
        PrintWriter out = response.getWriter();
            out.println("<h1>Number of views: " + counter + "</h1>");
    }
}


