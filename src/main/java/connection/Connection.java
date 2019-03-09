package connection;

import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.client.MongoDatabase;

/**
 * @author lalitk
 *
 */
/**
 * @author lalitk
 *
 */
public class Connection implements IConnection {
	private static MongoClient mongo = null;

	public Connection() {
		mongo = Connection.doConnection();
	}

	private static MongoClient doConnection() {

		// Creating a Mongo client
		MongoClient mongo = new MongoClient(HOST, PORT);

		// Creating Credentials
		MongoCredential credential;
		credential = MongoCredential.createCredential(USER, DB, PASSWORD.toCharArray());
		System.out.println("Connected to the database successfully :: credential ");
		return mongo;
	}

	public MongoDatabase getDB() {
		MongoClient mongo = this.getConnection();
		MongoDatabase database = mongo.getDatabase(DB);
		System.out.println("Databse ::" + database);
		return database;
	}

	public MongoDatabase getDB(MongoClient mongo) {
		MongoDatabase database = mongo.getDatabase(DB);
		System.out.println("Databse ::" + database);
		return database;
	}

	@Override
	public MongoClient getConnection() {
		// TODO Auto-generated method stub
		return Connection.mongo;
	}
}
