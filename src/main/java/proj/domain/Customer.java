package proj.domain;

public class Customer {
	
	private String id;
	
	private String name;
	
	private String email;
	
	private String address;
	
	private String zip;
	
	private String phone;
	
	private String cellphone;
	
	

	public Customer(String name, String email, String address, String zip,
			String cellphone) {
		super();
		this.name = name;
		this.email = email;
		this.address = address;
		this.zip = zip;
		this.cellphone = cellphone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	
	

}
