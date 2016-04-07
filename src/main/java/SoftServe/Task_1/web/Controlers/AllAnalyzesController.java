package SoftServe.Task_1.web.Controlers;

import SoftServe.Task_1.Entity.Analysis;
import SoftServe.Task_1.Entity.Patient;
import SoftServe.Task_1.IO.SQL.AnalyzesDAO;
import SoftServe.Task_1.IO.SQL.PatientDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


@WebServlet("/AllAnalyzes")
public class AllAnalyzesController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Analysis> analyzes = new ArrayList<>();
        try{
            analyzes = new AnalyzesDAO().readAllAnalyzesByPatientID(Long.parseLong(request.getParameter("id")));

        }catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("analyzes", analyzes);

        RequestDispatcher dispatcher = request.getRequestDispatcher("AllAnalyzes.jsp");

        dispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("AllPatients.jsp");
        dispatcher.forward(request, response);
    }


}
