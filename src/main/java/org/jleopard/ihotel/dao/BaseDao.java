/**
 */

package org.jleopard.ihotel.dao;

import org.jleopard.exception.SqlSessionException;
import org.jleopard.mvc.context.BeanContextUtil;
import org.jleopard.session.SqlSession;
import org.jleopard.session.sessionFactory.SqlSessionFactory;

import java.io.Serializable;
import java.util.List;

public abstract class BaseDao<T> {

    private SqlSessionFactory sessionFactory = (SqlSessionFactory) BeanContextUtil.getBeanByName("sqlSessionFactory");

    public int insert (T t){
        SqlSession session = sessionFactory.openSession();
        try {
            int temp = session.save(t);
            session.commit();
            session.close();
            return temp;
        } catch (SqlSessionException e) {
            e.printStackTrace();
            session.rollback();
        }
        return -1;
    }

    public int update(T t){
        SqlSession session = sessionFactory.openSession();
        try {
            int temp = session.update(t);
            session.commit();
            session.close();
            return temp;
        } catch (SqlSessionException e) {
            e.printStackTrace();
            session.rollback();
        }
        return -1;
    }

    public int updateByWhere(T t, String where, Serializable... args){
        SqlSession session = sessionFactory.openSession();
        try {
            int temp = session.updateByWhere(t,where,args);
            session.commit();
            session.close();
            return temp;
        } catch (SqlSessionException e) {
            e.printStackTrace();
            session.rollback();
        }
        return -1;
    }

    public int delete(T t){
        SqlSession session = sessionFactory.openSession();
        try {
            int temp = session.delete(t);
            session.commit();
            session.close();
            return temp;
        } catch (SqlSessionException e) {
            e.printStackTrace();
            session.rollback();
        }
        return -1;
    }

    public List<T> select(T t){
        SqlSession session = sessionFactory.openSession();
        try {
            List<T> res = (List<T>) session.get(t);
            session.close();
            return res;
        } catch (SqlSessionException e) {
            e.printStackTrace();
        }
        return null;
    }
}
