package by.epam.runner;

import by.epam.dao.factory.DAOFactory;
import by.epam.entities.Client;
import by.epam.enums.DataBaseType;
//import by.epam.dao.mysql.MySQLDAOFactory;
//import by.epam.dao.objects.RoomDAO;

import java.sql.SQLException;
import java.util.Date;

public class Main {

    public static void main(String[] args) {
//        String language = "EN";
//        String action = "sign_up";
//        try {
//            CommandType currentEnum = CommandType.valueOf(action.toUpperCase());
//            int g =0;
//
//        }
//        catch (IllegalArgumentException e){
//        System.err.println(e.getMessage());
//        }
//        if(language == "RU"){
//
//        }
        DAOFactory dao = DAOFactory.getDAOFactory(DataBaseType.MYSQL);
        try{
//
//            Client client = (Client) dao.getClientDAO().findEntityById(1);
//            if(dao.getClientDAO().delete(1)){


//                List<Room> clients = (List<Room>)dao.getRoomDAO().findAll();
//            if(clients.size() != 0){
//                Iterator<Room> iterator = clients.iterator();
//                while(iterator.hasNext()){
//                    System.out.println(iterator.next().toString());
//                }
//            }
//            else
//            { System.out.print("Empty");
//            }
          Client client = new Client(5,"Kfdfk", "Kekk", "Kokk", new Date(100000), "street", "25525","mai;@", "dwwdw", "asas");

           // dao.getClientDAO().update(client);
           dao.getClientDAO().create(client);
            //dao.getClientDAO().delete(client);
           // dao.getClientDAO().delete(Integer.valueOf(1));
            //dao.getClientDAO().delete(Integer.valueOf(2));
            //dao.getClientDAO().delete(Integer.valueOf(3));
         //  Administrator client = new Administrator(5,"Kfdfk", "Kekk", "Kokk", new Date(100000), "street", "25525", Date.from(Instant.now()),"gfg","ffd");
          //  dao.getAdministratorDAO().create(client);
        }
        catch (SQLException exp){
            System.err.print(exp.getMessage());
        }
    }
}
