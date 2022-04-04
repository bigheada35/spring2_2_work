package edu.kosmo.kbat;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.kbat.mapper.ProductCartMapper;
import edu.kosmo.kbat.vo.ProductCartVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@RunWith(SpringRunner.class)
//@ContextConfiguration("file:src/main/resources/mappers/ProductCartMapper.xml")
//@ContextConfiguration(locations={"classpath:resources/mappers/ProductCartMapper.xml"})
public class ProductCartMapperTest {
	
	@Autowired
	private ProductCartMapper productCartMapper;
	
	//@Transactional
	@Test
	public void testProductCartMapper() {
		assertNotNull(productCartMapper);
		log.info(productCartMapper.toString());
	}
	
	//@Transactional
	@Test
	public void testGetList() {
		System.out.println("---1---");
		for(ProductCartVO pcart : productCartMapper.getList(23)) {
			log.info(pcart.toString());
		}
	}
	
	@Test
	public void contextLoads() {
		System.out.println("---1---");
		log.info("productCartMapper test");
	}
}
