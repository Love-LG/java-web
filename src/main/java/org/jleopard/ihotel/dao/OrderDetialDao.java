/**
 */

package org.jleopard.ihotel.dao;

import org.jleopard.exception.SqlSessionException;
import org.jleopard.ihotel.entity.Food;
import org.jleopard.ihotel.entity.OrderDetail;
import org.jleopard.mvc.core.annotation.Component;
import org.jleopard.mvc.core.annotation.Inject;
import org.jleopard.session.SqlSession;
import org.jleopard.session.sessionFactory.SqlSessionFactory;

import java.io.Serializable;
import java.util.List;

@Component
public class OrderDetialDao extends BaseDao<OrderDetail> {

    @Inject
    private SqlSessionFactory sessionFactory;

    public List<OrderDetail> select(){
        SqlSession session = sessionFactory.openSession();
        try {
            List<OrderDetail> res = (List<OrderDetail>) session.get(OrderDetail.class);
            session.close();
            return res;
        } catch (SqlSessionException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<OrderDetail> select(String where, Serializable args){
        SqlSession session = sessionFactory.openSession();
        try {
            List<OrderDetail> res = (List<OrderDetail>) session.getByWhere(OrderDetail.class,where,args);
            session.close();
            return res;
        } catch (SqlSessionException e) {
            e.printStackTrace();
        }
        return null;
    }
}
