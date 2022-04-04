package edu.kosmo.kbat.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kosmo.kbat.joinvo.ProductOrderDetailBoardVO;
import edu.kosmo.kbat.joinvo.ProductOrderDetailOrderVO;
import edu.kosmo.kbat.mapper.MyPageMapper;
import edu.kosmo.kbat.mapper.QBoardAndMemberMapper;
import edu.kosmo.kbat.mapper.RBoardAndMemberMapper;
import edu.kosmo.kbat.mapper.ReviewMapper;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.ProductVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;
import edu.kosmo.kbat.vo.ReviewVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class RBoardServiceImpl implements RBoardService{
		
	@Autowired
	private RBoardAndMemberMapper boardAndMemberMapper;//ssj
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	@Autowired
	private MyPageMapper myPageMapper;


	@Override
	public void rwrite(RBoardAndMemberVO board, ProductOrderDetailOrderVO productOrderDetailOrderVO) {
		log.info("write()..");		
		String attachment_name = board.getAttachment_name();		
		myPageMapper.getOrderMyList(board.getMember_id());
		boardAndMemberMapper.rwrite(board);
		boardAndMemberMapper.rwrite_review(board);
		boardAndMemberMapper.rwrite_rating(board);		
		boardAndMemberMapper.rwrite_img(attachment_name);
	}

	@Override
	public void rmodify(RBoardAndMemberVO board) {
		log.info("modify()service...");	
		boardAndMemberMapper.rmodify(board);	
	}

	@Override
	public void rhit(int board_id) {
		log.info("hit()...");	
		boardAndMemberMapper.rhit(board_id);	
	}

	@Override
	public void rdelete(int board_id) {
		log.info("delete()...");
		boardAndMemberMapper.rdelete_attachment(board_id);
		boardAndMemberMapper.rdelete_review(board_id);
		boardAndMemberMapper.rdelete(board_id);		
	}

	@Override
	public int rgetTotalCount() {
		log.info("getTotal() ..");
		return boardAndMemberMapper.rgetTotalCount();
	}

	@Override
	public List<BoardtypeVO> qgetboardtypeList() {
		return boardAndMemberMapper.rgetboardtypeList();
	}

	@Override
	public RBoardAndMemberVO rread(int board_id) {
		log.info("read()..");
		rhit(board_id);
		return boardAndMemberMapper.rread(board_id);
	}

	@Override
	public List<RBoardAndMemberVO> rgetListWithPaging(Criteria criteria, int product_id) {
		log.info("getList() ..");	
		return boardAndMemberMapper.rgetListWithPaging(criteria, product_id);
	}
	
}
