package proj.aop;


import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class ServiceAspect {

	private static final Logger logger = Logger.getLogger(ServiceAspect.class);

	@Pointcut("execution(* proj.service.impl.*.*(..))")
	public void serviceLayerPointcut() {

	}

	@Around("serviceLayerPointcut()")
	public Object serviceBefore(ProceedingJoinPoint pjp) throws Throwable {
		logger.debug("serviceBefore!!!");
		Object[] args = pjp.getArgs();
		return pjp.proceed(args);
	}

}
