package SoftServe.Task_1.Test;

/**
 * Created by ayasintc on 3/29/2016.
 */

import SoftServe.Task_1.Entity.Analysis;
import SoftServe.Task_1.Entity.Patient;
import SoftServe.Task_1.IO.SQL.AnalyzesDAO;
import SoftServe.Task_1.IO.SQL.PatientDAO;
import SoftServe.Task_1.IO.SelfFormatIO;
import SoftServe.Task_1.Logic.Hospital;

import java.util.ArrayList;
import java.util.List;

import static SoftServe.Task_1.Entity.AnalysisType.*;

public class TestMain {

    public static void main(String[] args) throws Exception {

        Patient first = Patient.newPatientBuilder()
                .setBirthDate("04/04/1987")
                .setName("Andrew")
                .setLastName("Yasinskiy")
                .setId(1)
                .setAnalysis(Analysis.newAnalysisBuilder()
                        .setId(1)
                        .setType(HORMONES)
                        .setDate("03/02/2015 14:50")
                        .setReport("I don't know what is is...")
                        .build())
                .setAnalysis(Analysis.newAnalysisBuilder()
                        .setId(2)
                        .setType(ALLERGY)
                        .setDate("03/02/2015 14:15")
                        .setReport("Good")
                        .build())
                .build();


        Patient second = Patient.newPatientBuilder()
                .setBirthDate("04/04/1954")
                .setName("Petia")
                .setLastName("Petrushkin")
                .setId(3)
                .setAnalysis(Analysis.newAnalysisBuilder()
                        .setId(1)
                        .setType(BLOOD)
                        .setDate("03/01/2014 14:15")
                        .setReport("Yeap")
                        .build())
                .setAnalysis(Analysis.newAnalysisBuilder()
                        .setId(2)
                        .setType(ALLERGY)
                        .setDate("03/01/2016 14:15")
                        .setReport("Mu-ha-ha")
                        .build())
                .build();

        Patient third = Patient.newPatientBuilder()
                .setBirthDate("04/04/1998")
                .setName("Jora")
                .setLastName("Jorkin")
                .setId(2)
                .setAnalysis(Analysis.newAnalysisBuilder()
                        .setId(1)
                        .setType(ALLERGY)
                        .setDate("02/01/2016 14:40")
                        .setReport("Good Analysis.Very good!")
                        .build())
                .setAnalysis(Analysis.newAnalysisBuilder()
                        .setId(2)
                        .setType(BLOOD)
                        .setDate("02/01/2016 14:44")
                        .setReport("Simple good")
                        .build())
                .build();

        Hospital hospital = new Hospital();
        hospital.addPatient(first);
        hospital.addPatient(second);
        hospital.addPatient(third);

        List<Patient> listPatients = new ArrayList<>();
        listPatients.add(first);
        listPatients.add(second);
        listPatients.add(third);



        Analysis analysis_1 = Analysis.newAnalysisBuilder()
                .setType(RH_FACTOR)
                .setDate("02/01/2016 13:10")
                .setReport("Bad bad")
                .build();

        Analysis analysis_2 = Analysis.newAnalysisBuilder()
                .setType(ALLERGY)
                .setDate("04/02/2016 13:16")
                .setReport("bcvbcvb")
                .build();

        Analysis analysis_3 = Analysis.newAnalysisBuilder()
                .setType(BLOOD)
                .setDate("04/03/2014 13:11")
                .setReport("sdf")
                .build();

        List<Analysis> listAnalysis = new ArrayList<>();
        listAnalysis.add(analysis_1);
        listAnalysis.add(analysis_2);
        listAnalysis.add(analysis_3);


        //System.out.println(third.getBirthDateInString());

        /*JSONIO js = new JSONIO();
        js.writeHospital(hospital, "myJson");
        js.readHospital("myJson");
        js.readHospital("myJson");*//*


        //XMLIO xmlIO = new XMLIO();
        //xmlIO.writeHospital(hospital, "hospital.xml");

        //Hospital hospitalSecond =  xmlIO.readHospital("hospital.xml");
        //System.out.println(hospitalSecond.getByAnalisisType(BLOOD));*/

        SelfFormatIO self = new SelfFormatIO();




        //Hospital hosp2 = self.readHospital("myTxt.txt");
        //System.out.println(hosp2);
        PatientDAO ptDAO = new PatientDAO();
        //ptDAO.deletePatientTable();
        //ptDAO.createPatientTable();
        //ptDAO.addPatient(second);
        //ptDAO.addPatient(third);
        //ptDAO.deletePatientTable();
        //ptDAO.removePatientTable();
        //ptDAO.createPatientTable();
        //ptDAO.addPatient(first);
        //ptDAO.addListPatients(listPatients);
        //Hospital hospital1 = new Hospital();
        //hospital1.setPatients(ptDAO.readAllPatients());
        //ptDAO.updatePatient(third);
        //ptDAO.createPatientTable();

        //ptDAO.addPatient(first);
        //ptDAO.deletePatientById(2);

        AnalyzesDAO ADAO = new AnalyzesDAO();
        //ADAO.deleteAnalysisTable();
        //ADAO.deletePatientTable();
        //ADAO.createAnalyzesTable();
        //ADAO.addAnalysis(analysis_1, first);
        ADAO.addListAnalysis(listAnalysis, third);
        //ADAO.deletePatientTable();
        //ADAO.updateAnalysis(analysis_1);
        //ADAO.deleteAnalysisById(1);

        //System.out.println(ptDAO.readPatientByIdWithAlalyzes(first));


        //Analysis dsdf = ADAO.readAnalyzesById(14);






        //Hospital hospital14 = self.readHospital("myTxt.txt");
        //System.out.println(hospital14);

        //System.out.println(String.valueOf(first.getId()));

        //System.out.println(self.readHospital("myTxt.txt"));


















    }
}

