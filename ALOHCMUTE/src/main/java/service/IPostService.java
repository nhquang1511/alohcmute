package service;

import java.util.List;

import entity.Post;


public interface IPostService {
	void insert(Post post);

	void update(Post post);

	void delete(int postID) throws Exception;

	List<Post> findAll();

}
