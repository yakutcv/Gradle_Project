package SoftServe.Task_1.IO;

import SoftServe.Task_1.Interfaces.IO;
import SoftServe.Task_1.Logic.Hospital;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class XMLIO implements IO {
    @Override
    public void writeHospital(Hospital hospital, String file) throws  JAXBException, IOException {
        try{
            JAXBContext jc = JAXBContext.newInstance(Hospital.class);
            Marshaller m = jc.createMarshaller();
            m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
            m.marshal(hospital, new File("src\\SoftServe\\SoftServe.Task_1\\data\\" + file));
            System.out.println("XML file created!");
        }catch (JAXBException e){
            System.out.println("JAXB wrong " + e);
        }
    }

    @Override
    public Hospital readHospital(String file) throws JAXBException, IOException{
        Hospital hospital = new Hospital();
        try{
            JAXBContext jc = JAXBContext.newInstance(Hospital.class);
            Unmarshaller ums = jc.createUnmarshaller();
            //hospital = (Hospital)ums.unmarshal(new File("src\\SoftServe\\SoftServe.Task_1\\data\\" + file));
            FileReader reader = new FileReader("src\\SoftServe\\SoftServe.Task_1\\data\\" + file);
            hospital = (Hospital) ums.unmarshal(reader);
        }catch (JAXBException e) {
            e.printStackTrace();
        }
        return hospital;
    }
}
