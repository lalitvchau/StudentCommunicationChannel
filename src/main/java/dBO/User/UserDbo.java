package dBO.User;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.bson.Document;

import com.mongodb.BasicDBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import connection.Connection;
import models.User;

/**
 * 
 * @author lalitk
 *
 */
public class UserDbo implements IUserDbo {
	/**
	 * Collection Name
	 */
	private final String COLLECTION = "stu_user";

	public boolean addUser(User user) throws Exception {
		if (this.isExistStuId(user.getStuId()) || this.isExistUser(user.getEmail())) {
			System.out.println("Duplicate Student Id or User Already Exist !");
			throw new Exception("Duplicate Student Id or User Already Exist !");
		}
		try {
			MongoDatabase database = new Connection().getDB();
			MongoCollection<Document> collection = database.getCollection(COLLECTION);
			System.out.println("Collection myCollection selected successfully " + collection);
			Document document = user.getDocument();
			collection.insertOne(document);
			System.out.println("Document inserted successfully");
			this.getUser(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean removeUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	public User getUser(User user) {
		// Retrieving a collection
		try {
			MongoDatabase database = new Connection().getDB();
			MongoCollection<Document> collection = database.getCollection(COLLECTION);
			System.out.println("Collection myCollection selected successfully " + collection);
			BasicDBObject andQuery = new BasicDBObject();
			List<BasicDBObject> obj = new ArrayList<BasicDBObject>();
			obj.add(new BasicDBObject("email", user.getEmail()));
			obj.add(new BasicDBObject("password", user.getPassword()));
			andQuery.put("$and", obj);

			//System.out.println(andQuery.toString());
			FindIterable<Document> iterDoc = collection.find(andQuery);
			// Getting the iterator
			Iterator<Document> it = iterDoc.iterator();
			int count = 0;
			while (it.hasNext()) {
				user.setDocument(it.next());
				count++;
			}
			return (count == 1 ? user : null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public User updateUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isExistUser(String email) {
		try {
			MongoDatabase database = new Connection().getDB();
			MongoCollection<Document> collection = database.getCollection(COLLECTION);
			System.out.println("Collection myCollection selected successfully " + collection);
			BasicDBObject andQuery = new BasicDBObject();
			List<BasicDBObject> obj = new ArrayList<BasicDBObject>();
			obj.add(new BasicDBObject("email", email));
			andQuery.put("$and", obj);

			System.out.println(andQuery.toString());
			FindIterable<Document> iterDoc = collection.find(andQuery);
			int count = 0;

			// Getting the iterator
			Iterator<Document> it = iterDoc.iterator();

			while (it.hasNext()) {
				System.out.println(it.next());
				count++;
			}
			if (count > 0)
				return true;
			return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean isExistStuId(String stuId) {
		try {
			MongoDatabase database = new Connection().getDB();
			MongoCollection<Document> collection = database.getCollection(COLLECTION);
			System.out.println("Collection myCollection selected successfully " + collection);
			BasicDBObject andQuery = new BasicDBObject();
			List<BasicDBObject> obj = new ArrayList<BasicDBObject>();
			obj.add(new BasicDBObject("stuId", stuId));

			andQuery.put("$and", obj);
			System.out.println(andQuery.toString());
			FindIterable<Document> iterDoc = collection.find(andQuery);
			int count = 0;

			// Getting the iterator
			Iterator<Document> it = iterDoc.iterator();

			while (it.hasNext()) {
				System.out.println(it.next());
				count++;
			}
			if (count > 0)
				return true;
			return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
