/**
 */

package org.jleopard.ihotel;

import org.jleopard.jdbc.BaseDataSource;
import org.jleopard.mvc.core.ApplicationInitializer;
import org.jleopard.mvc.core.annotation.Component;
import org.jleopard.mvc.view.ViewResolver;
import org.jleopard.mvc.view.jsp.JSPViewResolver;
import org.jleopard.session.Configuration;
import org.jleopard.session.sessionFactory.SqlSessionFactory;

import javax.sql.DataSource;

import static org.jleopard.ihotel.config.DemoConfigConstant.*;
import static org.jleopard.ihotel.config.DemoConfigConstant.DATASOURCE_DRIVER;
import static org.jleopard.ihotel.config.DemoConfigConstant.ENTITY_PACKAGE;

@Component
public class App implements ApplicationInitializer {

    @Override
    public String basePackage() {
        return BASE_PACKAGE;
    }

    @Override
    public ViewResolver viewResolver() {
        return new JSPViewResolver();
    }

    @Override
    public SqlSessionFactory sqlSessionFactory(Configuration configuration) {
        DataSource dataSource= new BaseDataSource(DATASOURCE_URL, DATASOURCE_USER, DATASOURCE_PASSWORD, DATASOURCE_DRIVER);
        configuration = new Configuration(ENTITY_PACKAGE,  dataSource);
        configuration.setAutoCommit(false);
        return SqlSessionFactory.Builder.build(configuration);
    }
}
