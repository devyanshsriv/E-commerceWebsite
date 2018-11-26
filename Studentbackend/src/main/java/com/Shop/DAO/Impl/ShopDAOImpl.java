package com.Shop.DAO.Impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Shop.DAO.ShopDAO;
import com.Shop.Model.Shop;

@Repository("shopDAO")
@Transactional
public class ShopDAOImpl implements ShopDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addShop(Shop shop) {
		try {
			sessionFactory.getCurrentSession().save(shop);
            return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean updateShop(Shop shop) {
		try {
			sessionFactory.getCurrentSession().update(shop);
            return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteShop(int userid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleShop(userid));
            return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public Shop getSingleShop(int userid) {
		try {
			return sessionFactory.getCurrentSession().get(Shop.class, userid);
        } 
		catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Shop> getAllShop() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Shop").list();
        } 
		catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public Shop getUserByEmail(String username) {
		  try {
	            return(Shop) sessionFactory.getCurrentSession().createQuery("from Shop where email=:emailid")
	            .setParameter("emailid",username).getSingleResult();                
	        }
	        catch(Exception ex){
	            ex.printStackTrace();
	            return null;    
	        }
	}
}