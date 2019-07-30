package vip.wuzhilian.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import vip.wuzhilian.bean.Customer;
import vip.wuzhilian.bean.Message;
import vip.wuzhilian.bean.MessageFactory;
import vip.wuzhilian.service.ICustomerService;

import java.util.List;

@Controller
public class CustomerControllerImpl implements ICustomerController{

    @Autowired
    ICustomerService customerService;

//    只能返回浏览器能看到的数据，移植性不好
    @RequestMapping("/showCustomers")
    @Override
    public String getCustomers(@RequestParam(value = "pageNum", defaultValue = "1")Integer pn, Model model) {
//        PageHelper.startPage(pn,10);
//        List<Customer> customers;
//        customers = customerService.getAll();
//        PageInfo pageInfo = new PageInfo(customers, 5);
//        model.addAttribute("pageInfo", pageInfo);
        return "showCustomers";
    }


    @RequestMapping("/getCustomers")
    @ResponseBody
    @Override
    public Message getCustomersWithJson(@RequestParam(value = "pageNum", defaultValue = "1")Integer pn) {
        System.out.println("xxx");
        PageHelper.startPage(pn,10);
        List<Customer> customers;
        customers = customerService.getAll();
        PageInfo pageInfo = new PageInfo(customers, 5);
        Message msg = MessageFactory.getSuccess();
        msg.setAttribute("pageInfo", pageInfo);
        String str = "123";
        return msg;
    }
}
