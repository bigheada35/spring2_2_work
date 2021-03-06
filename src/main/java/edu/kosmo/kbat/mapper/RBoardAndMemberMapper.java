package edu.kosmo.kbat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.kosmo.kbat.joinvo.ProductOrderDetailBoardVO;
import edu.kosmo.kbat.joinvo.ProductOrderDetailOrderVO;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.NBoardAndMemberVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;

@Mapper
public interface RBoardAndMemberMapper {

	RBoardAndMemberVO rread(int board_id); 
	void rwrite(RBoardAndMemberVO board);
	void rmodify(RBoardAndMemberVO board);
	void rhit(int board_id);
	void rdelete(int board_id);
	
	@Delete("delete from attachment where board_id = #{board_id}")
	void rdelete_attachment(int board_id);

	@Delete("delete from review where board_id = #{board_id}")
	void rdelete_review(int board_id);

	//페이징
	int rgetTotalCount();
	List<RBoardAndMemberVO> rgetListWithPaging(Criteria criteria, int product_id);
	
	List<BoardtypeVO> rgetboardtypeList();
	
	//후기
	void rwrite_review(RBoardAndMemberVO board);
	void rwrite_rating(RBoardAndMemberVO board);
	
	//사진첨부
	void rwrite_img(String attachment_name);

	
}
