package au.com.billingbuddy.service;


import java.util.List;

import au.com.billingbuddy.model.PostBackEntity;

public interface PostBackManager {
	public void save(PostBackEntity postBackEntity);
	public void update(PostBackEntity postBackEntity);
	public void delete(PostBackEntity postBackEntity);
	public PostBackEntity getPostBacksById(String postBackId);
	public List<PostBackEntity> getAllPostBacks();
}
