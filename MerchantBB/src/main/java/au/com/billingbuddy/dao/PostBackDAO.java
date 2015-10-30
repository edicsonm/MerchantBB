package au.com.billingbuddy.dao;

import java.util.List;

import au.com.billingbuddy.model.PostBackEntity;

public interface PostBackDAO {
	public void save(PostBackEntity postBackEntity);
	public void update(PostBackEntity postBackEntity);
	public void delete(PostBackEntity postBackEntity);
	public PostBackEntity getPostBacksById(String postBackId);
	public List<PostBackEntity> getAllPostBacks();
}
