package com.korea.traveler;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.QnaDAO;
import util.Common;
import util.Paging;
import vo.MemberVO;
import vo.QnaVO;

@Controller
public class QnaController {

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	QnaDAO qna_dao;
	
	public QnaController(QnaDAO qna_dao) {
		this.qna_dao = qna_dao;
	}
	
	//Q&A페이지 전체조회
	@RequestMapping("q_qna_list.do")
	public String list(Model model, String page) {

		int nowPage = 1;

		if (page != null && !page.isEmpty()) {
			nowPage = Integer.parseInt(page);
		}

		//한 페이지에 표시될 게시물의 시작과 끝번호를 계산
		int start = (nowPage - 1) * Common.Board.BLOCKLIST + 1;
		int end = start + Common.Board.BLOCKLIST - 1;

		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);

		//페이지번호에 따른 전체 게시글 조회
		List<QnaVO> list = qna_dao.select(map);

		//전체 게시물 수 조회
		int rowTotal = qna_dao.getRowTotal();

		//페이지 메뉴 생성하기
		String pageMenu = Paging.getPaging("q_qna_list.do", nowPage, rowTotal, Common.Board.BLOCKLIST,
				Common.Board.BLOCKPAGE);

		request.getSession().removeAttribute("show");

		//바인딩
		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);

		//포워딩
		return Common.QNA_PATH +"qna_list.jsp?page="+nowPage;
	}
	
	//Q&A게시글 상세보기
	@RequestMapping("q_view.do")
	public String view(Model model, int qna_idx, int page) {
			
			//qna_idx로 하나의 게시글 조회
			QnaVO qvo = qna_dao.selectOne(qna_idx);
			
			model.addAttribute("qvo", qvo);
			
			return Common.QNA_PATH + "qna_view.jsp?page="+page;
	}
	
	//Q&A글쓰기폼으로 이동
	@RequestMapping("q_insert_form.do")
	public String insert_form() {
		return Common.QNA_PATH + "insert_form.jsp";
	}
	
	//Q&A글쓰기
	@RequestMapping("q_insert.do")
	public String insert(QnaVO vo) {
		
		int res = qna_dao.insert(vo);
		
		if(res > 0) {
			return "redirect:q_qna_list.do";
		}
		return null;
	}
	
	//Q&A게시글 삭제하기
	//Ajax 사용
	@RequestMapping("q_del.do")
	@ResponseBody
	public String delete(int qna_idx) {
	
		//qna_idx로 하나의 게시글 조회
		QnaVO vo = qna_dao.selectOne(qna_idx);
		
		int res = qna_dao.del(vo);
		
		if(res > 0) {
			return "[{'result':'yes'}]";
		}
		return "[{'result':'no'}]";
	}
	
	//Q&A 답변달기 폼으로 이동
	@RequestMapping("q_reply_form.do")
	public String reply_form(int qna_idx, int page) {
		return Common.QNA_PATH + "reply_form.jsp?qna_idx=" + qna_idx + "&page=" + page;
	}
	
	//Q&A 답글달기
	@RequestMapping("q_reply.do")
	public String reply(QnaVO vo, int qna_idx, int page) {
		
		//회원VO를 mvo변수에 담기
		MemberVO mvo = (MemberVO)session.getAttribute("vo");
		
		//기준글의 qna_idx를 이용해서 댓글을 달고 싶은 게시글의 정보를 가져온다.
		QnaVO baseVO = qna_dao.selectOne(qna_idx);
		
		//기준글에 step이상 값을 갖는 데이터에 step = step + 1 처리
		int res = qna_dao.update_step(baseVO);
		
		//댓글이 들어갈 위치 선정
		vo.setQna_ref(baseVO.getQna_ref());
		vo.setQna_step(baseVO.getQna_step()+1);
		vo.setQna_depth(baseVO.getQna_depth()+1);
		vo.setMember_idx(mvo.getMember_idx()); //mvo에 있는 member의 idx를 qna테이블의 foreign key인 member_idx에 입력한다.
		
		int result = qna_dao.reply(vo);
		
		System.out.println(res);
		
		if(result > 0) {
			return "redirect:q_qna_list.do?page="+page;
		}
		return null;
	}
	
	//마이페이지에서 본인 게시물만 조회
	@RequestMapping("my_qna.do")
	public String listone(Model model, String page) {

		//회원VO를 mvo변수에 담기
		MemberVO mvo = (MemberVO)session.getAttribute("vo");
		
		int nowPage = 1;

		if (page != null && !page.isEmpty()) {
			nowPage = Integer.parseInt(page);
		}

		// 한 페이지에 표시될 게시물의 시작과 끝번호를 계산
		int start = (nowPage - 1) * Common.Board.BLOCKLIST + 1;
		int end = start + Common.Board.BLOCKLIST - 1;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		map.put("vo", mvo.getMember_idx()); //회원테이블의 member_idx를 가져온다.

		// 페이지번호에 따른 유저 게시글 조회
		List<QnaVO> list = qna_dao.my_qna(map);

		// 전체 게시물 수 조회
		int rowTotal = qna_dao.getRowTotal();

		// 페이지 메뉴 생성하기
		String pageMenu = Paging.getPaging("my_qna.do", nowPage, rowTotal, Common.Board.BLOCKLIST,
				Common.Board.BLOCKPAGE);

		request.getSession().removeAttribute("show");

		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);

		//회원테이블에서 아이디가 admin일 경우 관리자로 인식하고, Q&A게시물 전체 리스트 페이지로 이동한다.
		if(mvo.getId().equals("admin")) {
			return "redirect:q_qna_list.do";
		}
		
		//아이디가 admin이 아닐 경우 일반 회원으로 인식하고, 마이페이지의 Q&A페이지로 이동한다.
		return Common.QNA_PATH +"my_qna.jsp?page="+nowPage;
	}
	
}
