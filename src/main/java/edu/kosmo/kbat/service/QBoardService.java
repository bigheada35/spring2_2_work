package edu.kosmo.kbat.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;


public interface QBoardService {

	QBoardAndMemberVO qread(int board_id);
	void qwrite(QBoardAndMemberVO board);
	void qmodify(QBoardAndMemberVO board);
	void qhit(int board_id);
	
	//답글
	void qdelete(int board_id);
	void qregisterReply(QBoardAndMemberVO board);
	void qrepwrite(QBoardAndMemberVO board);

	//페이징
	int qgetTotalCount();
	List<QBoardAndMemberVO> qgetListWithPaging(Criteria criteria);
	
	List<BoardtypeVO> qgetboardtypeList();
	
}
