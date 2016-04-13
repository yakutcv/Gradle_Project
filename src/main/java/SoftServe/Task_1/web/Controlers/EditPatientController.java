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
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static SoftServe.Task_1.IO.Validators.SelfFormatValidator.validBirthDate;
import static SoftServe.Task_1.IO.Validators.SelfFormatValidator.validName;

/**
 * Created by Phenom on 08.04.2016.
 */
@WebServlet("/EditPatientController")
public class EditPatientController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        Patient patient2 = new PatientDAO().getPatientById(Long.parseLong(id));
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String birthDate = request.getParameter("birthDate");


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
                .setId(patient2.getId())
                .build();
        try {
            new PatientDAO().updatePatient(patient);
        } catch (Exception e) {
            e.printStackTrace();
            //out.print("Can't add patient into DB");
        }

        List<Patient> patients = new ArrayList<>();

        try {
            patients = new PatientDAO().getAllPatients();
        } catch (Exception e) {
        }

        request.setAttribute("patients", patients);
        request.setAttribute("patient", patient);

        RequestDispatcher rd = request.getRequestDispatcher("AllPatients.jsp");

        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Patient patient2 = new PatientDAO().getPatientById(Long.parseLong(request.getParameter("id")));
        request.setAttribute("patient2", patient2);
        RequestDispatcher dispatcher = request.getRequestDispatcher("EditPatient.jsp");
        dispatcher.forward(request, response);
    }
}
