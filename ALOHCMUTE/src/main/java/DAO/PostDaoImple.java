package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import entity.Comment;
import entity.Post;
import entity.User;

public class PostDaoImple implements IPostDao {

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

		} finally {
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
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			Post post = enma.find(Post.class, postid);
			if (post !=null) {
				enma.remove(post);
			}
			else {
				throw new Exception("Không tìm thấy");
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}

	}

	public List<Post> findAll() {

		EntityManager enma = JPAConfig.getEntityManager();

		TypedQuery<Post> query = enma.createNamedQuery("Post.findAll", Post.class);

		return query.getResultList();

	}

	@Override
	public Post findByID(int postID) {
		EntityManager enma = JPAConfig.getEntityManager();

		TypedQuery<Post> query = enma.createNamedQuery("Post.findById", Post.class);
		query.setParameter("postID", postID);
		return query.getSingleResult();
	}

	@Override
	public List<Comment> getCommentsForPost(int postID) {
		EntityManager enma = JPAConfig.getEntityManager();

		TypedQuery<Comment> query = enma.createNamedQuery("Comment.findByPostID", Comment.class);

		return query.getResultList();

	}

	@Override
	public List<Post> findbyuserid(int userId) {
		EntityManager enma = JPAConfig.getEntityManager();
	    try {
	        // Sử dụng EntityManager để tạo truy vấn
	        TypedQuery<Post> query = enma.createQuery(
	                "SELECT p FROM Post p WHERE p.user.userID = :userId", Post.class);
	        
	        // Thiết lập tham số cho truy vấn
	        query.setParameter("userId", userId);
	        
	        // Thực hiện truy vấn và trả về kết quả
	        return query.getResultList();
	    } finally {
	    	enma.close();
	    }
	}


}
