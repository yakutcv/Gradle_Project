package SoftServe.Task_1.web.Controlers;

import SoftServe.Task_1.Entity.Patient;
import SoftServe.Task_1.IO.SQL.PatientDAO;
import SoftServe.Task_1.IO.Validators.SelfFormatValidator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static SoftServe.Task_1.IO.Validators.SelfFormatValidator.validBirthDate;
import static SoftServe.Task_1.IO.Validators.SelfFormatValidator.validName;

/**
 * Created by ayasintc on 4/7/2016.
 */
@WebServlet("/AddPatient")
public class AddPatient extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("AddPatient.jsp");
        dispatcher.forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String birthDate = request.getParameter("birthDate");
        //PrintWriter out = response.getWriter();


        if(!validBirthDate(birthDate)) {

        }

        if(!validName(name)) {

        }

        if(!validName(lastName)) {

        }

        /*if (name ==null)name ="";
        if (lastName ==null)name ="";
        if (birthDate ==null)name ="";*/

        Patient patient = Patient.newPatientBuilder()
                .setBirthDate(birthDate)
                .setLastName(lastName)
                .setName(name)
                .build();
        try {
            new PatientDAO().addPatient(patient);
        } catch (Exception e) {
            e.printStackTrace();
            //out.print("Can't add patient into DB");
        }

        Set<Patient> patients = new HashSet<>();

        try {
            patients = new PatientDAO().readAllPatientsFromDB();
        } catch (Exception e) {
        }

        request.setAttribute("patients", patients);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");

        rd.forward(request, response);

    }
}
