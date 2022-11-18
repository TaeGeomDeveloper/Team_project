const API_KEY = "Qw6IqpBRoB%2FU5ikhIgG0SUDoPWZOe9dbP0LcM6htOLtgjm1IZUjiP92272R%2BTtx5ihlkEMyaHMk6LPlDc37x3Q%3D%3D"


function fn_find() {
    var Day = document.getElementById("day");
    var AREA_ID = document.getElementById("AREA_ID");
    var PA_CROP_SPE_ID = document.getElementById("PA_CROP_SPE_ID");

    alert('Day: ' + Day + "AREA_ID: " + AREA_ID + "PA_CROP_SPE_ID: " + PA_CROP_SPE_ID);
}

var xhr = new XMLHttpRequest();
var url = 'http://apis.data.go.kr/1360000/FmlandWthrInfoService/getDayStatistics'; /*URL*/
var queryParams = '?' + encodeURIComponent('serviceKey') + '=' + API_KEY; /*Service Key*/
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /*페이지 번호*/
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /*한 페이지 결과 수*/
queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('XML'); /*응답 자료 형식*/
queryParams += '&' + encodeURIComponent('ST_YMD') + '=' + encodeURIComponent('20221113'); /*시작 연월일*/
queryParams += '&' + encodeURIComponent('ED_YMD') + '=' + encodeURIComponent('20221113'); /*종료 연월일*/
queryParams += '&' + encodeURIComponent('AREA_ID') + '=' + encodeURIComponent('4122000000'); /*지역 아이디*/
queryParams += '&' + encodeURIComponent('PA_CROP_SPE_ID') + '=' + encodeURIComponent('PA130201'); /*작물별 특성 아이디*/

xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        //alert('Status: ' + this.status + 'nHeaders: ' + JSON.stringify(this.getAllResponseHeaders()) + 'nBody: ' + this.responseText);
        parseXML(this.responseXML);
    }

    function parseXML(xmlDOM) {
        var item = xmlDOM.getElementsByTagName("item");
        var table = "<table class=\"table table-dark table-sm\">";
        table += "<tr>";
        table += "<th>지역 이름</th>" + "<td>" + item[0].getElementsByTagName("areaName")[0].childNodes[0].nodeValue + "</td>";
        table += "<th>작물 명</th>" + "<td>" + item[0].getElementsByTagName("paCropName")[0].childNodes[0].nodeValue + "</td>";
        table += "<th>일 평균기온</th>" + "<td>" + item[0].getElementsByTagName("dayAvgTa")[0].childNodes[0].nodeValue + "</td>";
        table += "<th>일 최고기온</th>" + "<td>" + item[0].getElementsByTagName("dayMaxTa")[0].childNodes[0].nodeValue + "</td>";
        table += "<th>일 최저 기온</th>" + "<td>" + item[0].getElementsByTagName("dayMinTa")[0].childNodes[0].nodeValue + "</td>";
        table += "</tr>";
        table += "<tr>";
        table += "<th>일 평균상대습도</th>" + "<td>" + item[0].getElementsByTagName("dayAvgRhm")[0].childNodes[0].nodeValue + "</td>";
        table += "<th>일 평균최저상대습도</th>" + "<td>" + item[0].getElementsByTagName("dayMinRhm")[0].childNodes[0].nodeValue + "</td>";
        table += "<th>일 강수량</th>" + "<td>" + item[0].getElementsByTagName("daySumRn")[0].childNodes[0].nodeValue + "</td>";
        table += "<th>일 평균풍속</th>" + "<td>" + item[0].getElementsByTagName("dayAvgWs")[0].childNodes[0].nodeValue + "</td>";
        table += "<th>일 누적일조시간</th>" + "<td>" + item[0].getElementsByTagName("daySumSs")[0].childNodes[0].nodeValue + "</td>";
        table += "</tr>";
        table += "</table>";

        document.getElementById('weatherBox').innerHTML = table;
    }
};

xhr.send('');

