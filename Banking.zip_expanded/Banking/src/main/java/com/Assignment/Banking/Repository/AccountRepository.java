package com.Assignment.Banking.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Assignment.Banking.domain.Account;
 

@Repository
public interface AccountRepository extends JpaRepository<Account, Long>{

}
