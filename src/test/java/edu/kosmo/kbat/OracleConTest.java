package edu.kosmo.kbat;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
public class OracleConTest {
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String user = "study_about_2_local";
	private static final String pw = "kbat";
	
	@Test
	public void contextLoads() throws ClassNotFoundException {
		System.out.println("----1----");
		Class.forName(driver);
		System.out.println("----2----");
		try(Connection con = DriverManager.getConnection(url, user, pw)){
			System.out.println("----3----");
			log.info("DB 연결 SUCCESS");
		} catch(Exception e) {
			System.out.println("----4----");
			fail(e.getMessage());
		}
	}
	
}
