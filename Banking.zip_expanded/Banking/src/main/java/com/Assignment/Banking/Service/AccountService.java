package com.Assignment.Banking.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Assignment.Banking.Repository.AccountRepository;
import com.Assignment.Banking.domain.Account;

@Service
public class AccountService {

	@Autowired
	private AccountRepository repo;

	public List<Account> listall() {
		return repo.findAll();
	}

	public void save(Account std) {
		repo.save(std);
	}
	public Account get(long id) {
		return repo.findById(id).get();
	}
	

	public void delete(long id) {
		repo.deleteById(id);
	}

	
}
