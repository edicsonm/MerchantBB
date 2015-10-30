package au.com.billingbuddy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import au.com.billingbuddy.dao.PostBackDAO;
import au.com.billingbuddy.model.PostBackEntity;
import au.com.billingbuddy.service.PostBackManager;
@Service
public class PostBackManagerImpl implements PostBackManager {
	
	@Autowired
	PostBackDAO postBackDAO;

	public void save(PostBackEntity postBackEntity) {
		postBackDAO.save(postBackEntity);
	}

	public void update(PostBackEntity postBackEntity) {
		postBackDAO.update(postBackEntity);
	}

	public void delete(PostBackEntity postBackEntity) {
		postBackDAO.delete(postBackEntity);
	}

	public PostBackEntity getPostBacksById(String postBackId) {
		return postBackDAO.getPostBacksById(postBackId);
	}

	public List<PostBackEntity> getAllPostBacks() {
		return postBackDAO.getAllPostBacks();
	}

}
