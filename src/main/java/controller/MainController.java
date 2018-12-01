package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;




@WebServlet(
        name = "StudentServlet",
        urlPatterns = "")
public class MainController extends HttpServlet {

        private void processRequest(
                HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

            List<List<String>> mainData = new ArrayList<List<String>>();

            List<String> sample = Arrays.asList("Details", "M", "sim", "10", "jim", "20", "2", "4");
            mainData.add(sample);
            mainData.add(sample);
            mainData.add(sample);
            mainData.add(sample);
            mainData.add(sample);
            mainData.add(sample);
            mainData.add(sample);
            mainData.add(sample);

            VTS data = new VTS();
            data.setList(mainData);

            request.setAttribute("data",data);

            RequestDispatcher dispatcher = request.getRequestDispatcher(
                    "/index.jsp");

            dispatcher.forward(request, response);
        }

        @Override
        protected void doGet(
                HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

            processRequest(request, response);
        }

    }
