import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lzl.work.employer.action.EmployerAction;
import com.lzl.work.employer.bean.Employer;


public class Test {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		ctx.destroy();
	}
}
