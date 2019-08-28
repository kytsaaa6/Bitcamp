/**
 * REST API 용 JS임 2019-08-26 작성 시작
 * main 화면
 */

$(document).ready(function() {
	list();

	// id check
//	$('#id').focusout(function() {
//		// ajax id전송 사용유무에 대한 결과 값 반환
//		$.ajax({
//			url : 'http://localhost:8080/mc/join/idcheck2', /*
//															 * jsp를 사용하지 않고 바로
//															 * 연결
//															 */
//			method : 'get',
//			data : {
//				id : $(this).val()
//			},
//			success : function(data) {
//				$(this).closest('h5').html('');
//				$('#idcheck +h5').removeClass('color_red');
//				$('#idcheck +h5').removeClass('color_blue');
//
//				if (data == 'Y') {
//					$('#idcheck').prop('checked', true);
//					$('#idcheck +h5').html('사용가능한 멋진 아이디!');
//					$('#idcheck +h5').addClass('color_blue');
//				} else {
//					$('#idcheck').prop('checked', false);
//					$('#idcheck +h5').html('사용중인 아이디이거나 탈퇴한 회원입니다.');
//					$('#idcheck +h5').addClass('color_red');
//				}
//			}
//		});
//	});
});

function join() {
	/* var formData = $('.contactForm').serializeObject(); */
	$.ajax({
//		url : 'http://localhost:8080/rc/join', // restful 어렵,,,ㅠㅠㅠㅠ
		url : 'http://13.209.40.5:8080/rc/join', // restful 어렵,,,ㅠㅠㅠㅠ
		// url:'http://localhost:8080/bitcamp/rest-users',
		type : 'POST',
		data : JSON.stringify({
			id : $('.contactForm #id').val(),
			pw : $('.contactForm #pw').val(),
			name : $('.contactForm #name').val(),
			phone : $('.contactForm #phone').val()
		}),
		contentType : 'application/json;charset=utf-8',
		dataType : 'json',
		success : function(data) {
			// if(data > 0) {
			if (data = 'success') {
				alert('성~~~공');
				// } else {
			} else if (data = 'fail') {
				alert('실~~~패');
				alert(JSON.stringify(data));
			}
		},
		error : function(data) {
			alert('에러,,,');
			alert(JSON.stringify(data));
		},
		complete : function(data) {
			console.log(data);
			list();
			$('#id').val('');
			$('#pw').val('');
			$('#name').val('');
			$('#phone').val('');
		}
	});
}


// login
//$('#loginForm').submit(function() {
function login() {
	
	$.ajax({
//		url : 'http://localhost:8080/bitcamp/rest-users/login',
		url : 'http://13.209.40.5:8080/bitcamp/rest-users/login',
		type : 'POST',
		data : JSON.stringify({
			id : $('#lid').val(),
			pw : $('#lpw').val()
		}),
		contentType : 'application/json;charset=utf-8',
		success : function(data) {
			if (data == 'yet') {
				alert(data);
			} else if (data == 'out') {
				alert(data);
			} else if (data == 'fail') {
				alert(data);
			} else if (data != null) {
				alert(data);
				sessionStorage.setItem("loginId", data);
				var n = sessionStorage.getItem("loginId");
				console.log(n);
				console.log(typeof n);
				location.replace("welcome.jsp");
			} 
		},
		error : function(data) {
			alert('errrrrrrrrror data: ' + data);
		},
		complete: function() {
			$('#lid').val(''),
			$('#lpw').val('')
		}
	});
}
//});

function list() {
	$.ajax({
		/* url:'http://localhost:8080/mc/rest/members', */
		// restful로 우회접근
//		url : 'http://localhost:8080/rc/list',
		url : 'http://13.209.40.5:8080/rc/list',
		type : 'GET',
		success : function(data) {
			/* alert(JSON.stringify(data)); */
			var html = '';
			for (var i = 0; i < data.length; i++) {

				html += '<tr>\n';
				html += '	<td>' + data[i].idx + '</td>\n';
				html += '	<td>' + data[i].id + '</td>\n';
				html += '	<td>' + data[i].name + '</td>\n';
				html += '	<td>' + data[i].phone + '</td>\n';
				html += '	<td>' + data[i].verify + '</td>\n';
				html += '	<td>' + data[i].regdate + '</td>\n';
				html += '	<td>' + data[i].out + '</td>\n';
				html += '	<td><span class="btn_manage " onclick="edit('
						+ data[i].idx + ')">edit</span>';
				html += '	<span class="btn_manage" onclick="del(' + data[i].idx
						+ ')">del</span></td>';
				html += '</tr>\n';
			}

			$('tbody').html(html);

		}
	});
}

function del(idx) {
	if (confirm('delete??????')) {
		$.ajax({
//			url : 'http://localhost:8080/bitcamp/rest-users/' + idx + '/del',
			url : 'http://13.209.40.5:8080/bitcamp/rest-users/' + idx + '/del',
			type : 'PUT',
			success : function(data) {

				if (data == 'success') {
					alert('삭제되었습니다');
				} else {
					alert('실-패');
				}
			},
			error : function() {
				alert('error ㅠㅠㅠㅠ');
			},
			complete : function() {
				list();
			}
		});
	}
}

function edit(idx) {
	if (confirm('정말 수정할거야?????리얼리????')) {
		// data를 받아오는 타이밍이 달라져서 먼저 선언하고 넣어줘야 한다.
		$('#mEditForm').css('display', 'block');
		$.ajax({
//			url : 'http://localhost:8080/bitcamp/rest-users/' + idx,
			url : 'http://13.209.40.5:8080/bitcamp/rest-users/' + idx,
			type : 'GET',
			success : function(data) {
				// alert(data.idx);
				// alert(JSON.stringify(data));

				// data =JSON.stringify(user);
				$('#idx2').val(idx);
				$('#id2').val(data.id);
				$('#name2').val(data.name);
				$('#phone2').val(data.phone);
			},
		});
	}
}

// 수우우우저어어엉
$('#editform').submit(function() {
	var idx = $('#idx2').val();

	$.ajax({
//		url : 'http://localhost:8080/bitcamp/rest-users/' + idx,
		url : 'http://13.209.40.5:8080/bitcamp/rest-users/' + idx,
		type : 'PUT',
		data : JSON.stringify({
			idx : idx,
			id : $('#id2').val(),
			phone : $('#phone2').val(),
			name : $('#name2').val()
		}),
		contentType : 'application/json; charset=utf-8',
		success : function(data) {
			alert(data);

			if (data == 'success') {
				alert('수정되었습니다');
			} else {
				alert('실-패');
			}
		},
		error : function(data) {
			alert('error ㅠㅠㅠㅠ');
			alert(data);
		},
		complete : function() {
			list();
			$('#mEditForm').css('display', 'none');
			// location.href = "#member";
		}
	});
});

function showMember() {
	$('#memForm').css('display', 'block');
	$('#adminForm').css('display', 'none');
	$("#showMem").addClass("btn-skin");
	$("#showAdmin").removeClass("btn-skin");
}

function showAdmin() {
	$('#adminForm').css('display', 'block');
	$('#memForm').css('display', 'none');
	$("#showAdmin").addClass("btn-skin");
	$("#showMem").removeClass("btn-skin");
}



/*-----------------------------------------------------*/
/*                       A D M I N                     */
/*-----------------------------------------------------*/

//function joinAd() {
//$.ajax({
//	url:'http://localhost:8080/bitcamp/rest-admin',
//	type : 'POST',
//	data : JSON.stringify({
//		id : $('.contactForm #id').val(),
//		pw : $('.contactForm #pw').val(),
//		name : $('.contactForm #name').val(),
//		phone : $('.contactForm #phone').val()
//	}),
//	contentType : 'application/json;charset=utf-8',
//	dataType : 'json',
//	success : function(data) {
//		// if(data > 0) {
//		if (data = 'success') {
//			alert('성~~~공');
//			// } else {
//		} else if (data = 'fail') {
//			alert('실~~~패');
//			alert(JSON.stringify(data));
//		}
//	},
//	error : function(data) {
//		alert('에러,,,');
//		alert(JSON.stringify(data));
//	},
//	complete : function() {
//		list();
//	}
//});
//}


function loginAdmin() {
	//loginAdminId
	$.ajax({
//		url : 'http://localhost:8080/bitcamp/rest-admin/login',
		url : 'http://13.209.40.5:8080/bitcamp/rest-admin/login',
		type : 'POST',
		data : JSON.stringify({
			id : $('#laid').val(),
			pw : $('#lapw').val()
		}),
		contentType : 'application/json;charset=utf-8',
		success : function(data) {
			if (data == 'NO') {
				alert('fail');
			} else if(data != null) {
				alert(data);
				sessionStorage.setItem("loginAdminId", data);
				var n = sessionStorage.getItem("loginAdminId");
				console.log(n);
				console.log(typeof n);
//				localStorage.setItem("loginAdminId", data);
//				var n = localStorage.getItem("loginAdminId");
//				console.log(n);
//				console.log(typeof n);
				location.href = 'http://13.125.249.209:8080/adminclient?s='+n;
			}
		},
		error : function(data) {
			alert('errrrrrrrrror data: ' + data);
		},
		complete: function() {
			$('#laid').val(''),
			$('#lapw').val('')
		}
	});
}
function toReserve() {
	$.ajax({
		url:'',
		type : 'GET',
		
			
	});
}

function showMemberLogin() {
	$('#loginForm').css('display', 'block');
	$('#loginAdForm').css('display', 'none');
	$("#loginMemBtn").addClass("btn-skin");
	$("#loginAdBtn").removeClass("btn-skin");
}

function showAdminLogin() {
	$('#loginAdForm').css('display', 'block');
	$('#loginForm').css('display', 'none');
	$("#loginAdBtn").addClass("btn-skin");
	$("#loginMemBtn").removeClass("btn-skin");
}


















