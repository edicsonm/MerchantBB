package au.com.billingbuddy.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import au.com.billingbuddy.model.PostBackEntity;

public class PostBackValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		return PostBackEntity.class.isAssignableFrom(clazz);
	}

	public void validate(Object arg0, Errors arg1) {
		
	}

}
