/**
 * REST API 용 JS임 2019-08-26 작성 시작
 */

$(document).ready(function() {
});

function logout() {
	$.ajax({
		url: 'http://localhost:8080/bitcamp/rest-users/login',
		type: 'GET',
		success:function(data) {
			alert(data);
			location.href = "index.jsp";
		}
	});
}