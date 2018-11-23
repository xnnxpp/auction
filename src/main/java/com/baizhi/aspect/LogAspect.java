package com.baizhi.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.context.annotation.Configuration;

@Configuration
@Aspect
public class LogAspect {

    /*配置切入点*/
    @Pointcut
    public void pointcut(){
    }


    /*前置的方法*/
    @Before("execution(* com.baizhi.service.*.*(..))")
public void before(JoinPoint joinPoint){

    System.out.println("前置+++++++++++++++++++");

}
    /*后置的方法*/
public void after(){


}


}
