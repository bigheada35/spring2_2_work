package edu.kosmo.kbat;

import org.junit.jupiter.api.Test;

import edu.kosmo.kbat.vo.ProductCartVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ProductCartVOTest {

	@Test
	public void testProductCartVO() {
		ProductCartVO pcart = new ProductCartVO();
		log.info(pcart.toString());
	}
	
}
