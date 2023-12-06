package DAO;

import java.util.List;

import entity.Post;

public interface IPostDao {
	void insert(Post post);
	void update(Post post);
	void delete(int postid) throws Exception;
	List<Post> findAll();

}
