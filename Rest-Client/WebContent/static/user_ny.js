/**
 * REST API 용 JS임 2019-08-26 작성 시작
 */

$(document).ready(function() {
	myinfo();
});

function logout() {
	$.ajax({
//		url: 'http://localhost:8080/bitcamp/rest-users/login',
		url: 'http://13.209.40.5:8080/bitcamp/rest-users/login',
		type: 'GET',
		success:function(data) {
			alert(data);
			sessionStorage.removeItem("loginId");
			localStorage.removeItem("loginId");
			location.href = "index.jsp";
		}
	});
}

function logoutAdmin() {
	$.ajax({
//		url: 'http://localhost:8080/bitcamp/rest-admin/login',
		url: 'http://13.209.40.5:8080/bitcamp/rest-admin/login',
		type: 'GET',
		success:function(data) {
//			alert(data);
			console.log(id);
			sessionStorage.removeItem("loginAdminId");
			localStorage.removeItem("loginAdminId");
			location.href = "index.jsp";
		}
	});
}

function myinfo() {
	var id = sessionStorage.getItem("loginId");
	console.log(id);
//	alert(id);
	$.ajax({
//		url: 'http://localhost:8080/bitcamp/rest-users/session/'+ id, 이거로는 406에러 뜸 ㅠ
//		url: 'http://localhost:8080/bitcamp/rest-users/session?id='+ id,
		url: 'http://13.209.40.5:8080/bitcamp/rest-users/session?id='+ id,
		type:'GET',
		contentType : 'application/json;charset=utf-8',
		success:function(data) {
//			alert('data: '+data);
//			alert('name '+data.name);
			
			$('#id').html(id);
			$('#name').html(data.name);
			$('#phone').html(data.phone);
			$('#regdate').html(data.regdate);
		},
		complete: function(data){
//			alert('data: '+data);
			console.log(data);
			console.log(JSON.stringify(data));
		}
	});
}