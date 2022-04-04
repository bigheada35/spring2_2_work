package edu.kosmo.kbat.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import edu.kosmo.kbat.joinvo.ProductOrderDetailBoardVO;
import edu.kosmo.kbat.joinvo.ProductOrderDetailOrderVO;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;
import edu.kosmo.kbat.vo.ReviewVO;


public interface RBoardService {
	

	RBoardAndMemberVO rread(int board_id); 
	void rwrite(RBoardAndMemberVO board, ProductOrderDetailOrderVO productOrderDetailOrderVO);
	void rmodify(RBoardAndMemberVO board);
	void rhit(int board_id);
	void rdelete(int board_id);

	//페이징
	int rgetTotalCount();	
	List<RBoardAndMemberVO> rgetListWithPaging(Criteria criteria, int product_id);
	
	List<BoardtypeVO> qgetboardtypeList();

}
