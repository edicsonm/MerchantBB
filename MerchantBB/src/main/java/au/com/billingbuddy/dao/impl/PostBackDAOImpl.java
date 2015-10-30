package au.com.billingbuddy.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import au.com.billingbuddy.dao.PostBackDAO;
import au.com.billingbuddy.model.PostBackEntity;

@Repository
@Transactional
public class PostBackDAOImpl implements PostBackDAO {

	@PersistenceContext
    private EntityManager manager;

	public void save(PostBackEntity postBackEntity) {
		manager.persist(postBackEntity);
	}

	public void update(PostBackEntity postBack) {
	}

	public void delete(PostBackEntity postBackEntity) {
		manager.remove(postBackEntity);
	}

	public PostBackEntity getPostBacksById(String postBackId) {
		return manager.find(PostBackEntity.class, postBackId );
	}

	public List<PostBackEntity> getAllPostBacks() {
		return manager.createQuery("Select a From PostBackEntity a", PostBackEntity.class).getResultList();
	}
	


}
