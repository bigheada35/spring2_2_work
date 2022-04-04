package edu.kosmo.kbat.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//@Slf4j
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ProductViewVO {

	private Date view_date;
	private int product_id;
	private int member_number; // 멤버 테이블
	private String member_id;

	
	
}
