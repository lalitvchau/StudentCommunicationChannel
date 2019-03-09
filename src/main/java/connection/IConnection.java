package connection;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

public interface IConnection {
	public final static String HOST = "localhost";
	public final static String DB = "stuCom";
	public final static String PASSWORD = "lalit";
	public final static String USER = "lalit";
	public final static int PORT = 27017;
	public MongoClient getConnection();
	public MongoDatabase getDB();

	public MongoDatabase getDB(MongoClient mongo);
}
