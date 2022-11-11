$(document).ready(function()
	{
	    var fontSizes = [ '8', '9', '10', '11', '12', '14','16', '18', '20', '22', '24', '28', '30', '36', '50', '72','100' ];
		var fontNames = [ '맑은 고딕', '궁서', '굴림체', '굴림', '바탕체', 'Arial', 'Arial Black','Comic Sans MS', 'Courier New' ];
		var toolbar = [[ 'fontname', [ 'fontname' ] ],
		[ 'fontsize', [ 'fontsize' ] ],
		[ 'style',    [ 'bold', 'italic', 'underline','strikethrough', 'clear' ] ],
		[ 'color', [ 'forecolor', 'color' ] ],
		[ 'table', [ 'table' ] ],
		[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
		[ 'height', [ 'height' ] ],
		[ 'insert',[ 'picture','link','video' ]],
		[ 'view', [ 'codeview', 'help'] ]
		];

         var setting = {
            height : 700,
            width : 1000,
            minHeight : 700,
            maxHeight : 700,
            focus : true,
            lang : 'ko-KR',
            toolbar : toolbar,
            fontSizes : fontSizes,
            fontNames : fontNames
            };

         $('#cb_content').summernote(setting);
});