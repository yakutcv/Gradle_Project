package SoftServe.Task_1.web.Controlers;

import SoftServe.Task_1.Entity.Analysis;
import SoftServe.Task_1.Entity.AnalysisType;
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
import java.util.List;

import static SoftServe.Task_1.IO.Validators.SelfFormatValidator.*;

/**
 * Created by ayasintc on 4/7/2016.
 */
@WebServlet("/AddAnalyzes")
public class AddAnalyzes extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        System.out.println(id);

        Patient patient = new PatientDAO().getPatientById(Long.parseLong(id));
        List<Analysis> analyzes = new ArrayList<>();

        System.out.println(patient);



        String type = request.getParameter("type");
        String report = request.getParameter("report");
        String date = request.getParameter("date");

        //PrintWriter out = response.getWriter();

        if(!validAnalyzesDate(date)) {

        }

        if(!validAnalysisType(type.toUpperCase())) {

        }

        /*if (name ==null)name ="";
        if (lastName ==null)name ="";
        if (birthDate ==null)name ="";*/

        Analysis analysis = Analysis.newAnalysisBuilder()
                .setDate(date)
                .setReport(report)
                .setType(AnalysisType.valueOf(type.toUpperCase()))
                .build();
        try {
            new AnalyzesDAO().addAnalysis(analysis,patient);
        } catch (Exception e) {
            e.printStackTrace();
        }

        List<Analysis> analyzes2 = new ArrayList<>();

        try {
            analyzes = new AnalyzesDAO().getAllAnalyzesByPatient(patient);
        } catch (Exception e) {
        }

        request.setAttribute("analyzes", analyzes);
        request.setAttribute("patient", patient);


        RequestDispatcher rd = request.getRequestDispatcher("AllAnalyzes");

        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Patient patient = new PatientDAO().getPatientById(Long.parseLong(request.getParameter("id")));
        request.setAttribute("patient", patient);
        RequestDispatcher dispatcher = request.getRequestDispatcher("AddAnalyzes.jsp");
        dispatcher.forward(request, response);
    }
}
