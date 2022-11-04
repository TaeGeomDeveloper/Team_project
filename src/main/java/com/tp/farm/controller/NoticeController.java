package com.tp.farm.controller;

import com.tp.farm.service.BoardService;
import com.tp.farm.service.NoticeBoardService;
import com.tp.farm.service.ReplyService;
import com.tp.farm.vo.BoardVO;
import com.tp.farm.vo.ReplyVO;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/*
        작성자 : 이영록, 윤태검
        내용 : 공지사항 작성 / NoticeController

        일시 : 2022.11.03(목) ~
*/

@RestController ("noticeController")
@RequestMapping("/notice")
public class NoticeController {

    private ServletContext context;

    @Autowired
    private NoticeBoardService noticeBoardService;

    @Autowired
    private ReplyService replyService;

    // 메인 페이지
    @RequestMapping(value = "/Main.do", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView Main(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Main");
        return mav;
    }
    //게시글 전체조회 페이지 - 이영록
    @RequestMapping(value="/BoardList.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView boardList(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("게시글 ");
        ModelAndView mav = new ModelAndView();
        List<BoardVO> list = noticeBoardService.selectAllBoard();
        mav.addObject("list", list);
        mav.setViewName("/notice/Notice");
        return mav;
    }
    //게시글 내용 페이지 - 이영록
    @RequestMapping(value="/ReadBoard.do", method=RequestMethod.GET)
    public ModelAndView readBoard(HttpServletRequest request, HttpServletResponse response) {

        ModelAndView mav = new ModelAndView();
        String seq = request.getParameter("seq");
        boolean flag = false;
        BoardVO board = noticeBoardService.readBoard(seq);
        List<ReplyVO> replyList = replyService.readAllReply(seq);
        mav.addObject("board", board);
        mav.addObject("replyList", replyList);
        mav.setViewName("/notice/NoticeRead");
        return mav;
    }
    //게시글 생성 페이지 - 이영록
    @RequestMapping(value="/CreateNewBoard.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView CreateNewBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("게시글 작성");
        ModelAndView mav = new ModelAndView();
        String viewName = this.getViewName(request);
        viewName= "/notice/NoticeWrite";
        mav.setViewName(viewName);
        return mav;
    }
    //게시글 생성 실행 주소(20221101수정판) - 이영록
    @RequestMapping(value="/createBoard.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView createBoard(@RequestParam("cb_attachedFile") MultipartFile attachFile , HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        BoardVO board = new BoardVO();
        boolean flag = false;
        board.setMi_id(request.getParameter("mi_id"));
        board.setCb_title(request.getParameter("cb_title"));
        board.setCb_content(request.getParameter("cb_content"));
        try {
            flag = noticeBoardService.createBoard(board, attachFile);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        if(flag) {
            System.out.println("게시글 생성 완료");
        }
        mav.setViewName("redirect:./BoardList.do");
        return mav;
    }
    //게시글 첨부파일 다운 실행 주소 - 이영록
    @RequestMapping(value="/download.do", method=RequestMethod.GET)
    public ModelAndView download(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        String seq = request.getParameter("seq");
        String token = request.getParameter("token");
        try {
            boolean flag = noticeBoardService.boardDownload(response, seq, token);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        mav.setViewName("redirect:./BoardList.do");
        return mav;
    }

    @RequestMapping(value="/viewUpdatePage.do", method=RequestMethod.GET)
    public ModelAndView viewUpdate(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        String seq = request.getParameter("seq");
        mav.addObject("seq", seq);
        mav.setViewName("updateTest");
        return mav;
    }
    @RequestMapping(value="/updateBoard.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView updateBoard(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        //file이 있을때는 ServletRequestContext로 변환해줘야 한다.
        ServletRequestContext src = new ServletRequestContext(request);
        boolean flag = false;
        try {
            flag = noticeBoardService.updateBoard(src);
        } catch (FileUploadException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        if(flag) {
            System.out.println("게시글 수정 완료");
        }
        mav.setViewName("redirect:./BoardList.do");
        return mav;
    }

    @RequestMapping(value="/delete.do", method=RequestMethod.GET)
    public ModelAndView delete(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        String seq = request.getParameter("seq");
        boolean flag = false;
        flag = noticeBoardService.deleteBoard(seq);
        if(flag) {
            System.out.println("delete 완료");
        }
        mav.setViewName("redirect:./BoardList.do");
        return mav;
    }

    @RequestMapping(value="/multiImageUploader.do")
    public void multiImageUploader(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            //파일정보를 넣어서 function또는 ajax에 보내기 위한 String
            String sFileInfo = "";
            //파일명을 받는다 - 일반 원본파일명
            String filename = request.getHeader("file-name");
            //파일 확장자 판별하는 String
            String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
            //확장자를 소문자로 변경
            filename_ext = filename_ext.toLowerCase();
            //파일 기본경로 : http://localhost:8080/프로젝트/
            String dftFilePath = request.getSession().getServletContext().getRealPath("/");
            //파일 기본경로 _ 상세경로(업로드경로) : http://localhost:8080/프로젝트/ + "resource\\upload" + "File.separator는 \\이다" + "smarteditor" + "\\"
            String filePath = dftFilePath + "resource\\upload" + File.separator + "smarteditor" + File.separator;
            //File에 업로드되는 저장공간을 지정해준다.
            File file = new File(filePath);
            if(!file.exists()) {
                file.mkdirs();
            }
            //업로드된 장소에서 파일이 갖게되는 파일명 : 이런 설정을 하는 이유는 중복이름방지 및 대략적인 업로드 시간도 표시
            String realFileNm = "";
            //realFileNm에 추가해줄 업로드날짜
            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
            //날짜를 String으로 변환
            String today= formatter.format(new java.util.Date());
            //업로드된 파일명 = 업로드시간 + 랜덤파일명 + 확장자
            realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
            //OutputStream으로 write할 경로와 파일을 나타내는 String = 업로드경로 + 바뀐파일명
            String rlFileNm = filePath + realFileNm;
            ///////////////// 서버에 파일쓰기 /////////////////
            InputStream is = request.getInputStream();      //요청에서 전달받은 파일을 읽어(read)준다
            OutputStream os=new FileOutputStream(rlFileNm); //경로에 업로드파일을 적어(write)준다.
            //파일을 write할때, '0~파일크기'만큼 while문으로 반복시킬 때 사용하는 int변수
            int numRead;
            //파일 크기를 byte타입(8bit)의 배열로 받는다.
            //request의 getHeader메소드를 이용하면 클라이언트의 다양한 정보를 습득할 수 있다.
            //byte b[]에 파일에 대한 정보 및 크기 저장
            byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
            //while( numRead = InputStream.읽기(위의 b를 사용, 0이 될때까지, b의 길이만큼 != 파일을 다읽어서-1이 되면 읽을게 없어서 멈춘다.)
            while((numRead = is.read(b,0,b.length)) != -1){
                //OutputStream으로 적기(위의 b를 사용, 0에서 파일크기끝까지)
                os.write(b,0,numRead);
            }
            if(is != null) {
                is.close();
            }
            os.flush();
            os.close();
            ///////////////// 서버에 파일쓰기 /////////////////
            // 정보 출력
            sFileInfo += "&bNewLine=true";
            // function과 ajax로 스마트에디터 안에서 img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
            sFileInfo += "&sFileName="+ filename;;
            // function과 ajax로 스마트에디터 안에서 스마트에디터에 img태그 사용시 img가 있는 url설정
            sFileInfo += "&sFileURL="+"/SmartFarm/resource/upload/smarteditor/"+realFileNm;
            PrintWriter print = response.getWriter();
            print.print(sFileInfo);
            print.flush();
            print.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //////////////////////////////////////////
    //      ↑게시판            ↓리플         //
    /////////////////////////////////////////

    @RequestMapping(value="/writeReply.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView writeReply(@ModelAttribute("info") ReplyVO reply, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        boolean flag = false;
        flag = replyService.writeReply(reply);
        if(flag) {
            System.out.println("reply 성공");
        } else {
            System.out.println("reply 실패");
        }
        mav.setViewName("redirect:./ReadBoard.do?seq="+reply.getCb_seq());
        return mav;
    }

    @RequestMapping(value="/viewWriteReReply.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView viewWriteReReply(@ModelAttribute("info") ReplyVO reply, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("reply", reply);
        mav.setViewName("/notice/ReReplyTest");
        return mav;
    }

    @RequestMapping(value="/writeReReply.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView writeReReply(@ModelAttribute("info") ReplyVO reply, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        boolean flag = false;
        System.out.println(reply.getCb_seq());
        flag = replyService.writeReReply(reply);
        if(flag) {
            System.out.println("ReReply 성공");
        } else {
            System.out.println("ReReply 실패");
        }
        mav.setViewName("redirect:./ReadBoard.do?seq="+reply.getCb_seq());
        return mav;
    }

    @RequestMapping(value="/viewUpdateReply.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView viewUpdateReply(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("UpdateReply");
        return mav;
    }

    @RequestMapping(value="/updateReply.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView updateReply(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();

        return mav;
    }

    @RequestMapping(value="/deleteReply.do", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView deleteReply(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView();
        int cbrSeq = Integer.parseInt(request.getParameter("cbrSeq"));
        String cbSeq = request.getParameter("cbSeq");
        boolean flag = replyService.deleteReply(cbrSeq);
        if(flag) {
            System.out.println("삭제완료");
        }
        mav.setViewName("redirect:./ReadBoard.do?seq="+cbSeq);
        return mav;
    }



    private String getViewName(HttpServletRequest request) throws Exception {
        String contextPath = request.getContextPath();
        String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
        if (uri == null || uri.trim().equals("")) {
            uri = request.getRequestURI();
        }


        int begin = 0; //
        if (!((contextPath == null) || ("".equals(contextPath)))) {
            begin = contextPath.length();
        }

        int end;
        if (uri.indexOf(";") != -1) {
            end = uri.indexOf(";");
        } else if (uri.indexOf("?") != -1) {
            end = uri.indexOf("?");
        } else {
            end = uri.length();
        }

        String fileName = uri.substring(begin, end);
        if (fileName.indexOf(".") != -1) {
            fileName = fileName.substring(0, fileName.lastIndexOf("."));
        }
        if (fileName.lastIndexOf("/") != -1) {
            fileName = fileName.substring(fileName.lastIndexOf("/"), fileName.length());
        }
        return fileName;
    }

}
