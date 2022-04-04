package edu.kosmo.kbat.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import edu.kosmo.kbat.mapper.QBoardAndMemberMapper;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class QBoardServiceImpl implements QBoardService{
		
	@Autowired
	private QBoardAndMemberMapper boardAndMemberMapper;

	@Override
	public QBoardAndMemberVO qread(int board_id) {
		log.info("read()..");
		qhit(board_id);
		return boardAndMemberMapper.qread(board_id);
	}
	
	@Override
	public void qwrite(QBoardAndMemberVO board) {
		log.info("write()..");
		boardAndMemberMapper.qwrite(board);		
	}
	
	@Override
	public void qrepwrite(QBoardAndMemberVO board) {
		log.info("rewrite()..");
		boardAndMemberMapper.qrepwrite(board);	
	}

	@Override
	public void qmodify(QBoardAndMemberVO board) {
		log.info("modify()service...");	
		boardAndMemberMapper.qmodify(board);	
	}

	@Override
	public void qhit(int board_id) {
		log.info("hit()...");	
		boardAndMemberMapper.qhit(board_id);		
	}

	@Override
	public void qdelete(int board_id) {
		log.info("delete()...");	
		boardAndMemberMapper.qdelete(board_id);		
	}

	@Override
	public List<BoardtypeVO> qgetboardtypeList() {		
		return boardAndMemberMapper.qgetboardtypeList();//ssj
	}


	@Override
	public void qregisterReply(QBoardAndMemberVO board) {
		boardAndMemberMapper.qupdateShape(board.getReply_group(), board.getReply_step());
		boardAndMemberMapper.qregisterBoard(board);
		boardAndMemberMapper.qregisterReply(board);				
	}


	@Override
	public int qgetTotalCount() {
		log.info("getTotal() ..");
		return boardAndMemberMapper.qgetTotalCount();
	}

	@Override
	public List<QBoardAndMemberVO> qgetListWithPaging(Criteria criteria) {		
		return boardAndMemberMapper.qgetListWithPaging(criteria);
	}


}
