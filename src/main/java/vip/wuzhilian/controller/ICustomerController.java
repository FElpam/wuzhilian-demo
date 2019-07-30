package vip.wuzhilian.controller;


import org.springframework.ui.Model;
import vip.wuzhilian.bean.Message;

public interface ICustomerController {

    public String getCustomers(Integer pn, Model model);
    public Message getCustomersWithJson(Integer pn);
}
