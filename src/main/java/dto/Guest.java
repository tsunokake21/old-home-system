package dto;

public class Guest {
	private int id;
	private String name;
	private String mail;
	private String pass;
	private String salt;
	private String hashedPass;
	
	
	public Guest(int id, String name, String mail, String pass, String salt, String hashedPass) {
		super();
		this.id = id;
		this.name = name;
		this.mail = mail;
		this.pass = pass;
		this.salt = salt;
		this.hashedPass = hashedPass;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getSalt() {
		return salt;
	}


	public void setSalt(String salt) {
		this.salt = salt;
	}


	public String getHashedPass() {
		return hashedPass;
	}


	public void setHashedPass(String hashedPass) {
		this.hashedPass = hashedPass;
	}
	
	
}
