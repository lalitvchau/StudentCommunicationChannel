package controller;

import dBO.User.IUserDbo;
import dBO.User.UserDbo;
import models.User;
import util.DataEncriptor;
/**
 * 
 * @author lalitk
 *
 */
public class RegisterSignInController implements IRegisterSignInController {
	public boolean doSignUp(User user) throws Exception {
		user.setCity(DataEncriptor.doEncriptStr(user.getCity()));
		user.setEmail(DataEncriptor.doEncriptStr(user.getEmail()));
		user.setFirstName(DataEncriptor.doEncriptStr(user.getFirstName()));
		user.setGender(DataEncriptor.doEncriptStr(user.getGender()));
		user.setLastName(DataEncriptor.doEncriptStr(user.getLastName()));
		user.setPassword(DataEncriptor.doEncriptStr(user.getPassword()));
		user.setState(DataEncriptor.doEncriptStr(user.getState()));
		user.setStuId(DataEncriptor.doEncriptStr(user.getStuId()));
		user.setZip(DataEncriptor.doEncriptStr(user.getZip()));
		System.out.println("Data Encripted");
		IUserDbo dbo = new UserDbo();
		boolean result = dbo.addUser(user);
		System.out.println("Is Added User =" + result);
		return result;
	}

	@Override
	public boolean doSignIn(User user) throws Exception {
		IUserDbo dbo = new UserDbo();
		user.setEmail(DataEncriptor.doEncriptStr(user.getEmail()));
		user.setPassword(DataEncriptor.doEncriptStr(user.getPassword()));
		user = dbo.getUser(user);
		return (user != null ? true : false);
	}
}
