package au.com.billingbuddy.controller;


import java.util.LinkedHashMap;
import java.util.Map;

import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import au.com.billingbuddy.model.CustomerEntity;
import au.com.billingbuddy.model.PaymentEntity;
import au.com.billingbuddy.model.PostBackEntity;
import au.com.billingbuddy.service.PostBackManager;

@Controller
public class HostedSalesController {
	
	private final Log log = LogFactory.getLog(getClass());
	
	@Autowired
    PostBackManager postBackManager;
	
	@RequestMapping(value={"/hostedSale"}, method = RequestMethod.GET)
	private ModelAndView processHostedSale(ModelMap model){
		
		PaymentEntity payment = new PaymentEntity();
		payment.setMerchant("39160054-72bc-11e5-a7fc-0211eb00a4cc");
		payment.setSite("5be22088-7166-11e5-82c5-0211eb00a4cc");
		payment.setAmount("10.01");
		payment.setCurrency("USD");
		payment.setTransactionReference("Ref-105489");
		payment.setTestTrans("TestTxn");
		payment.setProduct("Shoes");
		payment.setPaymentType("CC");		
		
		Map<String,String> paymentTypeList = new LinkedHashMap<String,String>();
		paymentTypeList.put("cc", "Credit Card");
		paymentTypeList.put("ach", "ACH");
		paymentTypeList.put("cup", "CUP");
		
		Map<String,String> attemptModeList = new LinkedHashMap<String,String>();
		attemptModeList.put("1", "Sale");
		attemptModeList.put("3", "Manual");
		
		Map<String,String> testTransList = new LinkedHashMap<String,String>();
		testTransList.put("1", "Yes");
		/*testTransList.put("0", "No");*/
		
		payment.setCustomerEntity(new CustomerEntity());
		payment.getCustomerEntity().setEmail("edicsonm@gmail.com");
		
		payment.getCustomerEntity().setFirstName("John");
		payment.getCustomerEntity().setLastName("Doe");
		payment.getCustomerEntity().setDayOfBirthday("1977-10-17");
		payment.getCustomerEntity().setAddress1("12 Billing Buddy st");
		payment.getCustomerEntity().setCity("Sydney");
		payment.getCustomerEntity().setState("NSW");
		
		payment.getCustomerEntity().setPostCode("2200");
		payment.getCustomerEntity().setCountry("AU");
		payment.getCustomerEntity().setPhone("5555555555");
		payment.getCustomerEntity().setFax("5555555555");
		payment.getCustomerEntity().setMobile("5555555555");
		
		model.addAttribute("payment", payment);
		
		model.addAttribute("paymentTypeList", paymentTypeList);
		model.addAttribute("attemptModeList", attemptModeList);
		model.addAttribute("testTransList", testTransList);
		
		ModelAndView modelAndView = new ModelAndView("hostedSale");
		return modelAndView;
	}
	
	@RequestMapping(value = { "/sendPayment" }, method = RequestMethod.POST)
    public String sendPayment(@Valid PaymentEntity paymentEntity, BindingResult result,Model model) {
		model.addAttribute("paymentEntity", paymentEntity);
		if (result.hasErrors()) return "fillPayment";
		else return "confirmPayment";
	}
	
	@RequestMapping(value={"/result"}, method = RequestMethod.GET)
	private ModelAndView processResultGet(
			@RequestParam(value="TransId", required=false) String transId,
			@RequestParam(value="TransRef", required=false) String transRef,
			@RequestParam(value="Amount", required=false) String amount,
			@RequestParam(value="Currency", required=false) String currency,
			@RequestParam(value="Status", required=false) String status,
			@RequestParam(value="Message", required=false) String message,
			@RequestParam(value="Email", required=false) String email,
			@RequestParam(value="Key", required=false) String key,
			@RequestParam(value="Test", required=false) String test,
			@RequestParam(value="RebillId", required=false) String rebillId,
			@RequestParam(value="Fail", required=false, defaultValue = "000") String fail
			){
		log.info("LLamado recibido en processResultGet por el metodo GET");
		
		PostBackEntity postBackEntity = new PostBackEntity();
		postBackEntity.setTransId(transId);
		postBackEntity.setTransRef(transRef);
		postBackEntity.setAmount(amount);
		postBackEntity.setCurrency(currency);
		postBackEntity.setStatus(status);
		postBackEntity.setMessage(message);
		postBackEntity.setEmail(email);
		postBackEntity.setKey(key);
		postBackEntity.setTest(test);
		postBackEntity.setRebillId(rebillId);
		postBackEntity.setFail(fail);
		
		postBackManager.save(postBackEntity);
		return new ModelAndView("success");
	}
	
	@RequestMapping(value={"/listPayments"}, method = RequestMethod.GET)
	private ModelAndView listPayments(ModelMap model){
		ModelAndView modelAndView = new ModelAndView("listPayments");
		model.addAttribute("listPayments", postBackManager.getAllPostBacks());
		return modelAndView;
	}
	
	
}
