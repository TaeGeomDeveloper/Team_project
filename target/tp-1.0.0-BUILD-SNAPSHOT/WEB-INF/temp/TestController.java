package gntp.project.factory.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import gntp.project.factory.service.TestService;
import gntp.project.factory.vo.ReplyVO;

@RestController("testController")
@RequestMapping("/rest")
public class TestController {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value="/hello",method=RequestMethod.GET)
	public String hello() {
		return "hello REST!";
	}
	
	@RequestMapping(value="/reply",method=RequestMethod.GET)
	public ReplyVO reply() {
		ReplyVO vo = 
				new ReplyVO(1,"rest test",new Timestamp(System.currentTimeMillis()),2);
		
		return vo;
	}
	// ArrayList<ReplyVO> 리턴하는 메소드 생성하시오
	@RequestMapping(value="/replyList",method=RequestMethod.GET)
	public ArrayList<ReplyVO> replyList(){
		ArrayList<ReplyVO> list = new ArrayList<ReplyVO>();
		ReplyVO vo = null;
		for(int i=0;i<5;i++) {
			vo = new ReplyVO(i+1,"rest test"+i,new Timestamp(System.currentTimeMillis()),i+2);
			list.add(vo);
		}
		return list;
	}
	
	//key는 replyList이고 value가 ArrayList<ReplyVO>인 HashMap을 리턴하는 메소드 생성하시오
	@RequestMapping(value="/replyMap",method=RequestMethod.GET)
	public HashMap<String,ArrayList<ReplyVO>> replyMap(){
		HashMap<String,ArrayList<ReplyVO>> map = null;
		map = new HashMap<String,ArrayList<ReplyVO>>();
		ArrayList<ReplyVO> list = new ArrayList<ReplyVO>();
		ReplyVO vo = null;
		for(int i=0;i<5;i++) {
			vo = new ReplyVO(i+1,"rest test"+i,new Timestamp(System.currentTimeMillis()),i+2);
			list.add(vo);
		}
		map.put("replyList", list);
		return map;
	}
	
	@RequestMapping(value="/insertReply", method= {RequestMethod.GET,RequestMethod.POST})
	public String insertReply(@RequestBody ReplyVO vo, HttpServletRequest request, 
					HttpServletResponse response) throws Exception {
		vo.setReplyDate(new Timestamp(System.currentTimeMillis()));
		String result = "fail";
		if(vo!=null) {
			result = "success";
		}
		return result;
	}
	
	@RequestMapping(value="/insertReplyMap", method= {RequestMethod.GET,RequestMethod.POST})
	public HashMap<String,ArrayList<ReplyVO>> insertReplyMap(@RequestBody ReplyVO vo, HttpServletRequest request, 
					HttpServletResponse response) throws Exception {
		vo.setReplyDate(new Timestamp(System.currentTimeMillis()));
		HashMap<String,ArrayList<ReplyVO>> map = null;
		map = new HashMap<String,ArrayList<ReplyVO>>();
		ArrayList<ReplyVO> list = new ArrayList<ReplyVO>();
		ReplyVO vo1 = null;
		for(int i=0;i<5;i++) {
			vo1 = new ReplyVO(i+1,"rest test"+i,new Timestamp(System.currentTimeMillis()),i+2);
			list.add(vo1);
		}
		list.add(vo);
		map.put("replyList", list);
		return map;
	}
	
	
	
	
	@RequestMapping(value="/selectReply", method= {RequestMethod.GET,RequestMethod.POST})
	public ReplyVO selectReply(@RequestParam("seq") String seq, HttpServletRequest request, 
					HttpServletResponse response) throws Exception {
		ReplyVO vo = null;
		
		vo = testService.findReply(seq);
		System.out.println(vo);
		return vo;
	}
	
	@RequestMapping(value="/selectReplyEntity", method= {RequestMethod.GET,RequestMethod.POST})
	public ResponseEntity<ReplyVO> selectReplyEntity(@RequestParam("seq") String seq, HttpServletRequest request, 
					HttpServletResponse response) throws Exception {
		ReplyVO vo = null;
		
		vo = testService.findReply(seq);
		
		return new ResponseEntity<ReplyVO>(vo,HttpStatus.OK);
	}
	
	@RequestMapping(value="/test.do", method=RequestMethod.GET)
	public ModelAndView test(HttpServletRequest request, 
					HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = "error";
		boolean flag = testService.testService();
		if(flag) {
			viewName = "welcome";
		}
		mav.setViewName(viewName);
		return mav;
		
	}
	
	@RequestMapping(value="/viewTestRest.do", method=RequestMethod.GET)
	public ModelAndView testRest(HttpServletRequest request, 
					HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = "testRest";
		
		mav.setViewName(viewName);
		return mav;
		
	}
	
	
}
