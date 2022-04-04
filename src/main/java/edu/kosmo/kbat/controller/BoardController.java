package edu.kosmo.kbat.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kosmo.kbat.joinvo.ProductOrderDetailBoardVO;
import edu.kosmo.kbat.joinvo.ProductOrderDetailOrderVO;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.page.PageVO;
import edu.kosmo.kbat.service.NBoardService;
import edu.kosmo.kbat.service.ProductService;
import edu.kosmo.kbat.service.QBoardService;
import edu.kosmo.kbat.service.RBoardService;
import edu.kosmo.kbat.service.ReviewService;
import edu.kosmo.kbat.service.StorageService;
import edu.kosmo.kbat.service.UserService;
import edu.kosmo.kbat.vo.NBoardAndMemberVO;
import edu.kosmo.kbat.vo.OrderDetailVO;
import edu.kosmo.kbat.vo.ProductVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;
import edu.kosmo.kbat.vo.ReviewVO;
import edu.kosmo.kbat.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping
public class BoardController {

	@Autowired
	private NBoardService nboardService;

	@Autowired
	private QBoardService qboardService;

	@Autowired
	private RBoardService rboardService;

	@Autowired
	private UserService userService;

	@Autowired
	private StorageService storageService;

	@Autowired
	private ReviewService reviewService;


	@GetMapping("/nlist") 
	public String list(Criteria cri, Model model) {
		log.info("list()..");
		model.addAttribute("list", nboardService.getList(cri));
		int total = nboardService.getTotal();
		log.info("total" + total);
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "nboard/list";
	}

	@GetMapping("/ncontent_view")
	public String content_view(NBoardAndMemberVO boardVO, Model model) {
		log.info("content_view()..");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("content_view", nboardService.read(board_id));
		return "nboard/content_view";
	}

	@GetMapping("/nwrite_view")
	public String write_view(Model model) {
		log.info("write_view()...");
		return "nboard/write_view";
	}

	@PostMapping("/nwrite") //
	public String write(NBoardAndMemberVO boardVO) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String user_id = auth.getName();
		boardVO.setMember_id(user_id);
		UserVO uservo = userService.getUser(user_id);
		boardVO.setMember_number(uservo.getMember_number());
		log.info("write()...");
		nboardService.write(boardVO);
		return "redirect:nlist";
	}

	@PostMapping("/nmodify")
	public String modify(NBoardAndMemberVO boardVO, Model model) {
		log.info("modify()...");
		nboardService.modify(boardVO);
		return "redirect:nlist";
	}

	@GetMapping("/nmodify_view")
	public String modify_view(NBoardAndMemberVO boardVO, Model model) {
		log.info("modify_view()...");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("modify_view", nboardService.read(board_id));
		return "nboard/modify_view";
	}

	@GetMapping("/ndelete")
	public String delete(NBoardAndMemberVO boardVO, Model model) {
		log.info("delete()...");
		nboardService.delete(boardVO.getBoard_id());
		return "redirect:nlist";
	}

	@GetMapping("qlist")
	public String qlist(Criteria cri, Model model, ProductOrderDetailOrderVO productOrderDetailOrderVO) {
		log.info("qlist()..");
		model.addAttribute("qlist", qboardService.qgetListWithPaging(cri));
		int total = qboardService.qgetTotalCount();
		log.info("total : " + total);
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "qboard/list";
	}

	@GetMapping("qcontent_view")
	public String qcontent_view(QBoardAndMemberVO boardVO, Model model) {
		log.info("qcontent_view()..");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("qcontent_view", qboardService.qread(board_id));
		return "qboard/content_view";
	}

	@GetMapping("qwrite_view")
	public String qwrite_view(QBoardAndMemberVO boardVO, Model model) {
		log.info("qwrite_view()...");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("qwirte_view", qboardService.qread(board_id));
		return "qboard/write_view";
	}

	@PostMapping("qwrite")
	public String qwrite(QBoardAndMemberVO boardVO, Model model, HttpServletRequest request) {		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String user_id = auth.getName();
		boardVO.setMember_id(user_id);
		UserVO uservo = userService.getUser(user_id);
		boardVO.setMember_number(uservo.getMember_number());
		System.out.println(uservo.getMember_number());
		String board_enable = boardVO.getBoard_enable();
		model.addAttribute(board_enable);
		log.info("qwrite0()...");
		qboardService.qwrite(boardVO);
		qboardService.qrepwrite(boardVO);
		return "redirect:qlist";
	}

	@PostMapping("qmodify")
	public String qmodify(QBoardAndMemberVO boardVO, Model model) {
		log.info("qmodify()...");
		qboardService.qmodify(boardVO);
		return "redirect:qlist";
	}

	@GetMapping("qmodify_view")
	public String qmodify_view(QBoardAndMemberVO boardVO, Model model) {// ssj
		log.info("qmodify_view()...");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("qmodify_view", qboardService.qread(board_id));
		return "qboard/modify_view";
	}

	@GetMapping("qdelete")
	public String qdelete(QBoardAndMemberVO boardVO, Model model) {
		log.info("delete()...");
		qboardService.qdelete(boardVO.getBoard_id());
		return "redirect:qlist";
	}

	@GetMapping("qreply_view")
	public String qreply_view(QBoardAndMemberVO boardVO, Model model) {
		log.info("reply_view()...");
		model.addAttribute("qreply_view", boardVO);
		return "qboard/reply_view";
	}

	@PostMapping("qreply")
	public String qreply(QBoardAndMemberVO boardVO, Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String user_id = auth.getName();
		boardVO.setMember_id(user_id);
		UserVO uservo = userService.getUser(user_id);
		boardVO.setMember_number(uservo.getMember_number());
		log.info("reply()...");
		qboardService.qregisterReply(boardVO);
		return "redirect:qlist";
	}

	@GetMapping("main/rcontent_view")
	public String rcontent_view(RBoardAndMemberVO boardVO, Model model) {
		log.info("content_view()..");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("rcontent_view", rboardService.rread(board_id));
		return "rboard/content_view";
	}

	@GetMapping("main/rwrite_view")
	public String rwrite_view(Model model, ProductOrderDetailOrderVO productOrderDetailOrderVO) {		
		log.info("write_view()...");		
		model.addAttribute("rwrite_view",productOrderDetailOrderVO);		
		return "rboard/write_view";

	}
	
	@PostMapping("main/rwrite")
	public String rwrite(RBoardAndMemberVO boardVO, Model model,
			@RequestPart(required = false) MultipartFile file, RedirectAttributes redirectAttributes, UserVO userVO,
			ProductOrderDetailOrderVO productOrderDetailOrderVO, HttpServletRequest request) {
		log.info("write()...");		
		int proudct_id = Integer.parseInt(request.getParameter("product_id"));
		int order_detail_id = Integer.parseInt(request.getParameter("order_detail_id"));
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String user_id = auth.getName();
		boardVO.setMember_id(user_id);
		UserVO uservo = userService.getUser(user_id);
		boardVO.setMember_number(uservo.getMember_number());
		storageService.store(file);
		String uri1 = MvcUriComponentsBuilder
				.fromMethodName(FileUploadController.class, "serveFile", file.getOriginalFilename()).build().toUri()
				.toString();
		boardVO.setAttachment_name(uri1);

		rboardService.rwrite(boardVO, productOrderDetailOrderVO);
		
		redirectAttributes.addFlashAttribute("message",
				"You successfully uploaded " + file.getOriginalFilename() + "!");
		
		return "redirect:main";
	}

	
	@PostMapping("main/rmodify")
	public String rmodify(RBoardAndMemberVO boardVO, Model model) {
		log.info("modify()...");
		rboardService.rmodify(boardVO);
		return "redirect:main";
	}

	@GetMapping("main/rmodify_view")
	public String rmodify_view(RBoardAndMemberVO boardVO, Model model) {
		log.info("modify_view()...");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("rmodify_view", rboardService.rread(board_id));
		return "rboard/modify_view";
	}

	@GetMapping("main/rdelete")
	public String rdelete(RBoardAndMemberVO boardVO, ReviewVO rboardVO, Model model) {
		log.info("delete()...");
		int review_id = rboardVO.getReview_id();
		reviewService.rdelete(review_id);
		rboardService.rdelete(boardVO.getBoard_id());
		return "redirect:main";
	}

}
