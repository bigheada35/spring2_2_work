package edu.kosmo.kbat.service;

import java.util.List;

import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.NBoardAndMemberVO;

public interface NBoardService {

	List<NBoardAndMemberVO> getList();
	
	NBoardAndMemberVO read(int board_id); 
	void write(NBoardAndMemberVO board); 
	void modify(NBoardAndMemberVO board);
	void hit(int board_id);
	void delete(int board_id);
	
	public int getTotal();
	public List<NBoardAndMemberVO> getList(Criteria criteria);
	
	List<BoardtypeVO> getboardtypeList();

}
