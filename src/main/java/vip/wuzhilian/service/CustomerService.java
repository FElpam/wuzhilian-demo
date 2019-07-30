package vip.wuzhilian.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vip.wuzhilian.bean.Customer;
import vip.wuzhilian.dao.CustomerMapper;

import java.util.List;

@Service
public class CustomerService implements ICustomerService{

    @Autowired
    CustomerMapper customerMapper;

    @Override
    public List<Customer> getAll() {
        return customerMapper.selectAll();
    }
}
