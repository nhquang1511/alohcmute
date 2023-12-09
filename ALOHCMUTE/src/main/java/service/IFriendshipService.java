package service;

import java.util.List;

import entity.Friendship;

public interface IFriendshipService {
	List<Friendship>findAll();
	Friendship findById (int fsid);
	void insert(Friendship fs);
}
