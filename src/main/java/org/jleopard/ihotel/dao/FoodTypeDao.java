/**
 */

package org.jleopard.ihotel.dao;

import org.jleopard.exception.SqlSessionException;
import org.jleopard.ihotel.entity.FoodType;
import org.jleopard.mvc.core.annotation.Component;
import org.jleopard.mvc.core.annotation.Inject;
import org.jleopard.session.SqlSession;
import org.jleopard.session.sessionFactory.SqlSessionFactory;

import java.util.List;

@Component
public class FoodTypeDao extends BaseDao<FoodType> {

    @Inject
    private SqlSessionFactory sessionFactory;

    public int deleteById(Integer id){
        SqlSession session = sessionFactory.openSession();
        try {
            int temp = session.delete(FoodType.class,id);
            session.commit();
            session.close();
            return temp;
        } catch (SqlSessionException e) {
            session.rollback();
        }
        return -1;
    }

    public List<FoodType> select(){
        SqlSession session = sessionFactory.openSession();
        try {
            List<FoodType> res = (List<FoodType>) session.get(FoodType.class);
            session.close();
            return res;
        } catch (SqlSessionException e) {
            e.printStackTrace();
        }
        return null;
    }
}
