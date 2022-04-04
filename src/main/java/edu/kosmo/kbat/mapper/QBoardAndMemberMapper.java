package edu.kosmo.kbat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;


@Mapper
public interface QBoardAndMemberMapper {

	QBoardAndMemberVO qread(int board_id); 
	void qwrite(QBoardAndMemberVO board);
	void qmodify(QBoardAndMemberVO board);
	void qhit(int board_id);
	void qdelete(int board_id);
	
	//댓글글쓰기
	void qregisterBoard(QBoardAndMemberVO board);
	void qregisterReply(QBoardAndMemberVO board);
	void qupdateShape(int reply_group, int reply_step);
	void qrepwrite(QBoardAndMemberVO board);
	
	//페이징
	int qgetTotalCount();
	List<QBoardAndMemberVO> qgetListWithPaging(Criteria criteria);
	
	List<BoardtypeVO> qgetboardtypeList();

}
