package by.epam.managers;

import org.apache.log4j.Logger;

import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.Properties;
import java.util.ResourceBundle;

/**
 * Class for accessing main property file
 *
 * @version 1.0 22 Nov 2015
 * @author Yury Druzenok
 */
public class DataBaseConfigurationManager {
    static Logger logger;
    private Properties dataBase;
    private ResourceBundle dbReourceBundle;
   // static ResourceBundle resourceBundle;

    private static DataBaseConfigurationManager singleton;

    static {
        singleton = new DataBaseConfigurationManager();
    }

    private DataBaseConfigurationManager() {
//        FileInputStream fis = null;
//        dataBase = new Properties();
//        new DOMConfigurator().doConfigure("log4j.xml", LogManager.getLoggerRepository());
//        logger = Logger.getLogger(DataBaseConfigurationManager.class);
//        try {
//            fis = new FileInputStream("resources/mysqlconfig.properties");
//            dataBase.load(fis);
//            if(fis != null)
//                fis.close();
//        }
//        catch (Exception e) {
//            logger.error("File not found exception:", e);
//        }
        dbReourceBundle = ResourceBundle.getBundle("mysqlconfig",Locale.getDefault() );
    }

    public static String get(String key) {
       // return singleton.dataBase.getProperty(key);
        return singleton.dbReourceBundle.getString(key);
    }
//    public static void createBundle(Locale current) {
//        resourceBundle = ResourceBundle.getBundle("text", current);
//    }
    public static String getBundleValue(Locale current, String key) throws UnsupportedEncodingException {
        ResourceBundle resourceBundle = ResourceBundle.getBundle("text",Locale.getDefault() );
        return new String(resourceBundle.getString(key).getBytes("ISO-8859-1"),"UTF-8");
    }
}