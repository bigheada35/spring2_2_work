package edu.kosmo.kbat.service;

import java.util.List;

import edu.kosmo.kbat.joinvo.ProductOrderDetailBoardVO;
import edu.kosmo.kbat.joinvo.ProductOrderDetailOrderVO;
import edu.kosmo.kbat.joinvo.ProductProductViewVO;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;

public interface MyPageService {
	// 회원 정보 조회
	MemberVO readMember(String member_id);

	// 회원 정보 수정 (비번포함x)
	public void updateMember(MemberVO memberVO);

	// 회원 탈퇴
	public void deleteMember(String member_id);

	// 회원 탈퇴 설정
	public void withdraw(MemberVO memberVO);

	// 주문내역 리스트 가져오기
	public List<ProductOrderDetailOrderVO> getOrderMyList(String member_id);

	public List<ProductOrderDetailOrderVO> getOrderMyList(String member_id, Criteria cri);

	// 페이징 단위에 적용되는 최대 주문내역 단위
	public int getOrderMyTotal(Criteria cri);

	// 내가 작성한 상품 리뷰
	public List<ProductOrderDetailBoardVO> getReviewMyList(String member_id);

	public List<ProductOrderDetailBoardVO> getMyReviewList(Criteria cri, String member_id);

	// 최근 본 상품 내역
	public List<ProductProductViewVO> getProductView(String member_id, int product_id);

	public void addProductView(String member_id, int prodcut_id);

	// 최근 본 상품 리스트 가져오기
	public List<ProductProductViewVO> getProductViewList(String member_id);

	public List<ProductProductViewVO> getProductViewList(String member_id, Criteria cri);

	// 페이징 단위에 적용되는 최대 최근 본 상품 단위
	public int getProductViewTotal(Criteria cri);
	
	
	public List<ProductOrderDetailBoardVO> getMyqList(String member_id);
	
	// 페이징을 적용한 작성한 고객 Q&A 리스트 받아오기
	public List<ProductOrderDetailBoardVO> getMyqList(String member_id, Criteria cri);

	// 페이징 단위에 적용되는 최대 고객 Q&A 게시글 단위
	public int getMyqnaTotal(Criteria cri);

}