package productcrudapp.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import jakarta.transaction.Transactional;
import productcrudapp.model.Product;

@Component
public class ProductDao {
	
	//create
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	//annotaion for write operation - create and update methods
	public void createProduct(Product product) {
		this.hibernateTemplate.save(product);
	}

	//get all product
	public List<Product> getProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete the single product
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class, pid);
		//delete() does not take pid, it needs the object
		this.hibernateTemplate.delete(p);
	}
	
	//get single product
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}
}
