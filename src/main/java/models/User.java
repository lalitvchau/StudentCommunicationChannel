package models;

import java.io.Serializable;

import org.bson.Document;
/**
 * 
 * @author lalitk
 *
 */
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String firstName;
	private String lastName;
	private String email;
	private String city;
	private String state;
	private String zip;
	private String stuId;
	private String mobileNum;
	private String password;
	private String gender;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getStuId() {
		return stuId;
	}

	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	public String getMobileNum() {
		return mobileNum;
	}

	public void setMobileNum(String mobileNum) {
		this.mobileNum = mobileNum;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public void setDocument(Document userDoc) {
		this.setCity(userDoc.getString("city"));
		this.setEmail(userDoc.getString("email"));
		this.setFirstName(userDoc.getString("firstName"));
		this.setGender(userDoc.getString("gender"));
		this.setLastName(userDoc.getString("lastName"));
		this.setMobileNum(userDoc.getString("mobileNum"));
		this.setPassword(userDoc.getString("password"));
		this.setState(userDoc.getString("state"));
		this.setStuId(userDoc.getString("stuId"));
		this.setZip(userDoc.getString("zip"));
	}

	public Document getDocument() {
		return new Document("firstName", this.getFirstName()).append("city", this.getCity())
				.append("email", this.getEmail()).append("gender", this.getGender())
				.append("lastName", this.getLastName()).append("mobileNum", this.getMobileNum())
				.append("state", this.getState()).append("stuId", this.getStuId())
				.append("password", this.getPassword()).append("zip", this.getZip());
	}
}
