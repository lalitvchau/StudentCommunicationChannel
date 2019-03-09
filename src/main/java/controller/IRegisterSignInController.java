package controller;

import models.User;

/**
 * 
 * @author lalitk
 *
 */
public interface IRegisterSignInController {
	public boolean doSignUp(User user) throws Exception;
	public boolean doSignIn(User user) throws Exception;
}
