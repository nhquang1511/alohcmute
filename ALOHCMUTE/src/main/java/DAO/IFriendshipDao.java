package DAO;

import java.util.List;

import entity.Friendship;




public interface IFriendshipDao {
	List<Friendship>findAll();
	Friendship findById (int fsid);
	void insert(Friendship fs);
}
