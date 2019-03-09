package dBO.User;

import models.User;
/**
 * 
 * @author lalitk
 *
 */
public interface IUserDbo {
	public boolean addUser(User user) throws Exception;

	public boolean removeUser(User user);

	public User getUser(User user);

	public User updateUser(User user);
	
	public boolean isExistUser(String email);
	
	public boolean isExistStuId(String stuId);
}
