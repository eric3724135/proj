package proj.service.impl;

import org.springframework.stereotype.Service;

import proj.domain.Customer;
import proj.domain.Login;
import proj.service.SigninService;
@Service
public class SigninServiceImpl implements SigninService {

	@Override
	public Customer loginNgetCustomer(Login login) {

		Customer customer = new Customer("test", login.getEmail(), "test",
				"tset", "test");
		return customer;
	}

}
