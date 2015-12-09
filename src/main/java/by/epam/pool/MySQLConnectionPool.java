package by.epam.pool;

import by.epam.managers.DataBaseConfigurationManager;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Represent new connection pool for MySQL data base
 *
 * @version 1.0 30 Nov 2015
 * @author Yury Druzenok
 */
public class MySQLConnectionPool extends ConnectionPool {
    MysqlDataSource mysqlDataSource;

    public MySQLConnectionPool() {
        mysqlDataSource = new MysqlDataSource();
        mysqlDataSource.setUser(DataBaseConfigurationManager.get("mysqldb.login"));
        mysqlDataSource.setPassword(DataBaseConfigurationManager.get("mysqldb.password"));
        mysqlDataSource.setUrl(DataBaseConfigurationManager.get("mysqldb.host"));
    }

    @Override
    public Connection getConnection() throws SQLException {
        return mysqlDataSource.getConnection();
    }

    @Override
    public void putConnection(Connection connection) throws SQLException {
        connection.close();
    }
}
