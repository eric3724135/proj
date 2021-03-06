package proj.domain;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class Login {
	
	@NotBlank
	@Email
	private String email;
	
	@NotBlank
	private String password;

	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Login(String email, String password) {
		super();
		this.email = email;
		this.password = password;
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

}
