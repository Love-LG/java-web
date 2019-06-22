/**
 */

package org.jleopard.ihotel.util;

import org.jleopard.jdbc.BaseDataSource;
import org.jleopard.session.Configuration;
import org.jleopard.session.sessionFactory.SqlSessionFactory;

import javax.sql.DataSource;

import static org.jleopard.ihotel.config.DemoConfigConstant.*;

public class JleopardUtil {

    public static SqlSessionFactory getSessionFactory(){
        DataSource dataSource= new BaseDataSource(DATASOURCE_URL, DATASOURCE_USER, DATASOURCE_PASSWORD, DATASOURCE_DRIVER);
        Configuration configuration = new Configuration(ENTITY_PACKAGE,  dataSource);
        configuration.setAutoCommit(false);
        SqlSessionFactory sessionFactory = SqlSessionFactory.Builder.build(configuration);
        return sessionFactory;
    }
}
