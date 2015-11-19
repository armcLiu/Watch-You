package badoora;

public class ap {
	private String lname;
	private String fname;
	private String email;
	private String password;
	private String address;
	private String gender;
	private String postal;
	private String country;
	private String ccard;
	private String cnum;
	private int se;
	private String vnum;
	public ap(String lname, String fname, String email, String password, String address, String gender, String postal,
			String country, String ccard, String cnum, int se, String vnum) {
		super();
		this.lname = lname;
		this.fname = fname;
		this.email = email;
		this.password = password;
		this.address = address;
		this.gender = gender;
		this.postal = postal;
		this.country = country;
		this.ccard = ccard;
		this.cnum = cnum;
		this.se = se;
		this.vnum = vnum;
	}
	public ap(String lname, String fname, String email, String password) {
		super();
		this.lname = lname;
		this.fname = fname;
		this.email = email;
		this.password = password;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPostal() {
		return postal;
	}
	public void setPostal(String postal) {
		this.postal = postal;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCcard() {
		return ccard;
	}
	public void setCcard(String ccard) {
		this.ccard = ccard;
	}
	public String getCnum() {
		return cnum;
	}
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}
	public int getSe() {
		return se;
	}
	public void setSe(int se) {
		this.se = se;
	}
	public String getVnum() {
		return vnum;
	}
	public void setVnum(String vnum) {
		this.vnum = vnum;
	}
	

}
