package SoftServe.Task_1.web.Controlers;

import SoftServe.Task_1.Entity.Patient;
import SoftServe.Task_1.IO.SQL.PatientDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ayasintc on 4/7/2016.
 */
@WebServlet("/AddPatient")
public class AddPatient extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String birthDate = request.getParameter("birthDate");


        Patient patient = Patient.newPatientBuilder()
                .setBirthDate(birthDate)
                .setLastName(lastName)
                .setName(name)
                .build();

        List<Patient> tmpPatients;

        try {
            tmpPatients = new PatientDAO().getAllPatients();
            for(Patient onePatient: tmpPatients) {
                if(onePatient.getFullName().equals(patient.getFullName())) {
                    out.print("Same");
                    break;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String birthDate = request.getParameter("birthDate");

        Patient patient = Patient.newPatientBuilder()
                .setBirthDate(birthDate)
                .setLastName(lastName)
                .setName(name)
                .setStatus(true)
                .build();

        try{
            new PatientDAO().addPatient(patient);
        }catch (Exception e){
            e.printStackTrace();
        }

       /*
        Set<Patient> tmpPatients = new HashSet<>();

       try {
            boolean flag = true;
            tmpPatients = new PatientDAO().getAllPatients();
            for(Patient onePatient: tmpPatients) {
                if(onePatient.getFullName().equals(patient.getFullName())) {
                    flag=false;
                    RequestDispatcher dispatcher = request.getRequestDispatcher("AddPatient.jsp");
                    dispatcher.forward(request, response);
                    break;
                }
            }
            if(flag) {
                new PatientDAO().addPatient(patient);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        List<Patient> patients = new ArrayList<>();

        try{
            patients = new PatientDAO().getAllPatients();
        }catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("patients", patients);
        RequestDispatcher rd = request.getRequestDispatcher("AllPatients.jsp");
        rd.forward(request, response);

    }
}
