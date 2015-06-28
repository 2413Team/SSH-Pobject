package com.sshpobject.aspect;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sshpobject.model.UserLog;
import com.sshpobject.service.UserLogService;


@Aspect
public class UserAspect {
	
	@Pointcut("execution(* com.sshpobject.service.UserService.*(..))||execution(* com.sshpobject.service.OrganizationService.*(..))"
			+ "||execution(* com.sshpobject.service.ShuoshuoService.*(..))||execution(* com.sshpobject.service.SixinService.*(..))")
	public void myPoint(){};
	
	@After(value="myPoint()")
	public void after(JoinPoint joinPoint){
		UserLog log=new UserLog();
		String methodName = joinPoint.getSignature().getName();
		String args=joinPoint.getArgs().toString();
		SimpleDateFormat fmt=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date=fmt.format(new Date());
		log.setMethod(methodName);
		log.setVaule(args);
		try {
			log.setDate(fmt.parse(date));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		UserLogService dao=getLogService();
		dao.addLog(log);
	}
	
	private UserLogService getLogService(){
		UserLogService logService;
		BeanFactory bf=new ClassPathXmlApplicationContext("applicationContext.xml");
		logService=(UserLogService)bf.getBean("userLogService");
		return logService;
	}
}
