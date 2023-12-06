package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import entity.Post;
import entity.User;

public class PostDaoImple implements IPostDao{

	@Override
	public void insert(Post post) {
EntityManager enma = JPAConfig.getEntityManager();
		
		EntityTransaction trans = enma.getTransaction();
		
		try {
			trans.begin();
			
			enma.persist(post);
			
			trans.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			
			trans.rollback();
			
			throw e;
			
		}finally {
			enma.close();
		}
	}

	@Override
	public void update(Post post) {
		// TODO Auto-generated method stub
		EntityManager enma = JPAConfig.getEntityManager();

		EntityTransaction trans = enma.getTransaction();

		try {

			trans.begin();

			enma.merge(post); // merger là update

			trans.commit();

		} catch (Exception e) {

			e.printStackTrace();

			trans.rollback();

			throw e;

		} finally {

			enma.close();

		}
	}

	@Override
	public void delete(int postid) throws Exception {
		
	}

	public List<Post> findAll() {

		EntityManager enma = JPAConfig.getEntityManager();

		TypedQuery<Post> query = enma.createNamedQuery("Post.findAll", Post.class);

		return query.getResultList();

	}


}
