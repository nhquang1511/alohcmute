package DAO;

import java.util.List;

import entity.FriendRequest;



public interface IFriendRequestDao {
	List<FriendRequest>findAll();
	void update(FriendRequest fr);
}
