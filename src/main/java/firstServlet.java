import logic.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "firstServlet", value = "/firstServlet")
public class firstServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession();
        String user =(String) session.getAttribute("current_user");
        if(user==null){
            //response для анонимного пользоваотеля
            //авторизация
            //регистрация
            //sesion.setAttributr(""current_user",ID);
        }else{
            //response для авторизации пользователя
        }

        /*Cart cart = (Cart)session.getAttribute("cart");

        String name= request.getParameter("name");
        int quantity =Integer.parseInt(request.getParameter("quantity"));
        if(cart==null){
            cart= new Cart();
            cart.setName(name);
            cart.setQuantity(quantity);
        }
        session.setAttribute("cart",cart);
        getServletContext().getRequestDispatcher("/showCart.jsp").forward(request,response);*/
        /*Integer count = (Integer)session.getAttribute("count");
        if (count ==null){
            session.setAttribute("count",1);
            count=1;
        }else{
            session.setAttribute("count",count+1);
        }
        String name1 = request.getParameter("name");
        String surname = request.getParameter("surname");
        PrintWriter pw = response.getWriter();
        pw.println("<h1>Your count is :"+count+"</h1>");
        pw.println("<html>");
        pw.println("<h1>Hello "+name1+" "+surname+"</h2>");
        pw.println("</html>");*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
