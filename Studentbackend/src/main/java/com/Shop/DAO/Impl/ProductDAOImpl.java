package com.Shop.DAO.Impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Shop.DAO.ProductDAO;
import com.Shop.Model.CartLine;
import com.Shop.Model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().save(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean updateProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteProduct(int productid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleProduct(productid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public Product getSingleProduct(int productid) {
		try {
			return sessionFactory.getCurrentSession().get(Product.class, productid);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProduct() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Product").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProductByKeyWords(String keyword) {
		try {
			Session session = sessionFactory.openSession();
			String sql = "select p.productid,p.name,p.supplierid,p.quantity,p.unitprice,p.active,p.code from Product as p inner join Category as c on p.categoryid = c.categoryId where upper(p.name) LIKE upper('%"
					+ keyword + "%') or upper(c.categoryName) LIKE upper('%" + keyword + "%')";
			Query query = session.createSQLQuery(sql);
			List<Object[]> groupList = (List<Object[]>) query.list();
			List<Product> list = new ArrayList<>();
			for (Object[] arr : groupList) {
				Product pro = new Product();
				pro.setProductid(Integer.parseInt(arr[0].toString()));
				pro.setName(arr[1].toString());
				pro.setSupplierid(Integer.parseInt(arr[2].toString()));
				pro.setQuantity(arr[3].toString());
				pro.setUnitprice(Double.parseDouble(arr[4].toString()));
				pro.setActive(Boolean.parseBoolean(arr[5].toString()));
				pro.setCode(arr[6].toString());

				list.add(pro);
			}
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductByCategory(int categoryId) {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Product where categoryId=:categoryId")
					.setParameter("categoryId", categoryId).list();

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	
	@Override
	public List<Product> getProductByMinMaxPrice(double minprice, double maxprice) {
		String querry = "FROM Product WHERE unitprice BETWEEN :minunitprice AND :maxunitprice";

		try {
			return sessionFactory.getCurrentSession().createQuery(querry, Product.class)
					.setParameter("minunitprice", minprice).setParameter("maxunitprice", maxprice).list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

}
