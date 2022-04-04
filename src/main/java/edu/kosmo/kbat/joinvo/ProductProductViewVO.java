package edu.kosmo.kbat.joinvo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
======= product =======
product_ID	VARCHAR2(20 BYTE)
product_NAME	VARCHAR2(64 BYTE)
product_PRICE	NUMBER
CATEGORY_NUMBER	NUMBER
MBR_ID	VARCHAR2(50 BYTE)
product_COLOR	VARCHAR2(150 BYTE)
product_SIZE	VARCHAR2(150 BYTE)
product_STOCK	NUMBER
product_THUMBNAIL	VARCHAR2(1000 BYTE)
PRV	NUMBER

======= product_view =======
MBR_ID	VARCHAR2(50 BYTE)
product_ID	VARCHAR2(20 BYTE)
VIEW_DATE	DATE
*/

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class ProductProductViewVO {

	private int product_id; // 상품 ID
	private String product_name; // 상품명
	private int product_price; // 상품가격
	
	private int product_enable; // 비공개여부 =private default 0

	private Date view_date; // 상품 조회 날짜

	private int member_number;
	private String member_id; // 회원 ID
	
	private int category_id; // 상품카테고리번호
	private String category_name; // 상품카테고리명
	
	private int video_id;
	private String video_name;
	private int image_id;
	private String image_name;

}