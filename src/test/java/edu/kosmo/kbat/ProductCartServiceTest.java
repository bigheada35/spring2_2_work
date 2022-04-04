package edu.kosmo.kbat;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import edu.kosmo.kbat.service.ProductCartService;
import edu.kosmo.kbat.vo.ProductCartVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest
public class ProductCartServiceTest {
	@Autowired
	private	ProductCartService productCartService;
	
	@Test
	public void test() {
		System.out.println("---2---");
		List <ProductCartVO> productCartList = productCartService.getList(23);// 23 : kbat1
		for (ProductCartVO productCartVO : productCartList) {
			log.info(productCartVO.toString());
		}
	}
	
	@Test
	public void contextLoads() {
		System.out.println("---1---");
		assertNotNull(productCartService);
		log.info("productCartService test");

	}
}
