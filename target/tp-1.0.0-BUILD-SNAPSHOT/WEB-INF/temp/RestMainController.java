package gntp.project.factory.controller;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import gntp.project.factory.service.TestService;
import gntp.project.factory.vo.ReplyVO;

@RestController("restMainController")
@RequestMapping("/rest")
public class RestMainController {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value="/test",method=RequestMethod.GET)
	public String test() {
		return "test";
	}
	
	@RequestMapping(value="/viewTestReq",method=RequestMethod.GET)
	public ModelAndView viewSimpleReq() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/rest/testReq");
		return mav;
	}
	
	//전체조회
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public ResponseEntity<ArrayList<ReplyVO>> listAllReply(){
		ArrayList<ReplyVO> list = new ArrayList<ReplyVO>();
		ReplyVO vo = null;
		for(int i=0;i<5;i++) {
			vo = new ReplyVO(i+1,"rest test"+i,new Timestamp(System.currentTimeMillis()),i+2);
			list.add(vo);
		}
		return new ResponseEntity<ArrayList<ReplyVO>>(list,HttpStatus.OK);
	}
	
	//부분조회(DB까지 거쳐서 결과)
	@RequestMapping(value="/{seq}", method=RequestMethod.GET)
	public ResponseEntity<ReplyVO> findReply(@PathVariable("seq") String seq){
		
		ReplyVO vo = null;
		vo = testService.findReply(seq);
		
		return new ResponseEntity<ReplyVO>(vo,HttpStatus.OK);
	}
	
	//입력
	@RequestMapping(value=" ", method= {RequestMethod.POST})
	public ResponseEntity<String> addReply(@RequestBody ReplyVO vo){
		System.out.println("restful "+vo);
		return new ResponseEntity<String>("insert success",HttpStatus.OK);
	}
	
	//수정
	@RequestMapping(value="/{seq}", method=RequestMethod.PUT)
	public ResponseEntity<String> modifyReply(@PathVariable("seq") Integer seq, @RequestBody ReplyVO vo){
		System.out.println("seq "+seq+" vo "+vo);
		return new ResponseEntity<String>("update success",HttpStatus.OK);
	}
	
	//삭제
	@RequestMapping(value="/{seq}", method=RequestMethod.DELETE)
	public ResponseEntity<String> removeReply(@PathVariable("seq") Integer seq){
		System.out.println("remove seq "+seq);
		return new ResponseEntity<String>("delete success",HttpStatus.OK);
	}
}










