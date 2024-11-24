package com.demo.product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.product.model.Product;
import com.demo.product.remote.ProductServiceRemote;
import com.demo.product.repository.ProductRepository;

import jakarta.transaction.Transactional;
@Transactional
@Service
public class ProductService implements ProductServiceRemote{

	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public void saveProduct(Product product) {
		try{
			productRepository.save(product);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
