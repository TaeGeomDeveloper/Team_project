/*서머노트 function*/

$(document).ready(function() {
    $('#cb_content').summernote({
        height: 700,
        fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
        fontNamesIgnoreCheck : [ '맑은고딕' ],
        focus: true,
        lang: "ko-KR",					// 한글 설정
        placeholder: '내용을 입력해주세요',	//placeholder 설정
        toolbar: [
                  // [groupName, [list of button]]
                  ['fontname', ['fontname']],
                  ['fontsize', ['fontsize']],
                  ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                  ['color', ['forecolor','color']],
                  ['table', ['table']],
                  ['para', ['ul', 'ol', 'paragraph']],
                  ['height', ['height']],
                  ['insert',['picture','link','video']],
                  ['view', ['fullscreen', 'codeview', 'help']]
                ],
              fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
              fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
    });
});

