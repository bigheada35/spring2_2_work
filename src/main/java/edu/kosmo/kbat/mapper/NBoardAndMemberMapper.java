package edu.kosmo.kbat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.NBoardAndMemberVO;


@Mapper
public interface NBoardAndMemberMapper {

	List<NBoardAndMemberVO> getList();
	NBoardAndMemberVO read(int board_id); 
	void write(NBoardAndMemberVO board);

	void hit(int board_id);
	void delete(int board_id);

	//페이징
	int getTotalCount();
	List<NBoardAndMemberVO> getListWithPaging(Criteria criteria);
	
	List<BoardtypeVO> getboardtypeList();
	void modify(NBoardAndMemberVO board);

}
