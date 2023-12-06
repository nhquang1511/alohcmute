package service;

import entity.Post;

import java.util.List;

import DAO.IPostDao;
import DAO.PostDaoImple;
public class PostSeviceImpl implements IPostService{
	IPostDao postDao = new PostDaoImple();

	@Override
	public void insert(Post post) {
		// TODO Auto-generated method stub
		postDao.insert(post);
		
	}

	@Override
	public void update(Post post) {
		// TODO Auto-generated method stub
		postDao.update(post);
		
	}

	@Override
	public void delete(int postID) throws Exception {
		// TODO Auto-generated method stub
		postDao.delete(postID);
		
	}

	@Override
	public List<Post> findAll(){
		return postDao.findAll();
	}


}
