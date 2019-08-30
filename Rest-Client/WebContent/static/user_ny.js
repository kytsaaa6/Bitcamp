/**
 * REST API 용 JS임 2019-08-26 작성 시작
 */

$(document).ready(function() {
	myinfo();
//	test_getAddress() ;
	getDustList();
	tripPlaceDust('서울특별시 강서구 곰달래로 247');
	 statusWithKakao() ;
//	alert(sessionStorage.getItem(loginIdx));
});

function logout() {
	$.ajax({
//		url: 'http://localhost:8080/bitcamp/rest-users/login',
		url: 'http://13.209.40.5:8080/bitcamp/rest-users/logout',
		type: 'GET',
		success:function(data) {
			alert(data);
			sessionStorage.removeItem("loginIdx");
			localStorage.removeItem("loginIdx");
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
//			console.log(id);
			sessionStorage.removeItem("loginAdminIdx");
			localStorage.removeItem("loginAdminIdx");
			location.href = "index.jsp";
		}
	});
}

function myinfo() {
	var idx = sessionStorage.getItem("loginIdx");
	console.log(idx);
//	alert(id);
	$.ajax({
//		url: 'http://localhost:8080/bitcamp/rest-users/session/'+ id, 이거로는 406에러 뜸 ㅠ
//		url: 'http://localhost:8080/bitcamp/rest-users/session?id='+ id,
		url: 'http://13.209.40.5:8080/bitcamp/rest-users/'+ idx,
		type:'GET',
		contentType : 'application/json;charset=utf-8',
		success:function(data) {
//			alert('data: '+data);
//			alert('name '+data.name);
			
			$('#id').html(data.id);
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

//시군구 주소 가져오기
function test_getAddressCity(ad) {
    //        var ad = $('#mybooking tbody>tr:nth-child(2n-1)>td:nth-child(3)').val();
    var adsplit = ad.split(' ');
    var output = '';
    output += adsplit[1]; //시군구
    return output;
}

//시도 주소 가져오기(특별/광역시)
function getAddressSido(ad){
	//남북도 줄임말 처리해야 함
	return ad.substring(0,2);
}

function getDustList() {
	$.ajax({
//		url: 'http://localhost:8080/bitcamp/api/dust',
		url: 'http://13.209.40.5:8080/bitcamp/api/dust',
		type: 'GET',
		dataType: 'json',
		success: function(data){
			
			var itemlist = data.list ;
			
			var output ='';
			
			for(var i=0; i<itemlist.length; i++) {
				var stationName = itemlist[i].stationName;
				var mangName = itemlist[i].mangName; //도시 or 도로변 등 측정위치
				
				var pm10Value = itemlist[i].pm10Value;
				var pm10Grade1h = evalDust(pm10Value);

				var pm25Value = itemlist[i].pm25Value;
				var pm25Grade1h = evalFineDust(pm25Value);
				
				output += '<tr>\n';
				output += '	<td>' + stationName + '</td>\n';
				output += '	<td>' + mangName + '</td>\n';
				output += '	<td>' + pm10Value + '</td>\n';
				output += '	<td>' + pm10Grade1h + '</td>\n';
				output += '	<td>' + pm25Value + '</td>\n';
				output += '	<td>' + pm25Grade1h + '</td>\n';
				output += '</tr>\n';
				
			}
			$('#apitable tbody').html(output);
			
//			console.log(output);
		},
		complete: function(data){
//			console.log(data);
		}
	});
}

//내 여행지의 시도를 통해 해당 미세먼지 리스트 반환
function tripPlaceDust(ad){
	var city = test_getAddressCity(ad);
	$.ajax({
//		url: 'http://localhost:8080/bitcamp/api/dust',
		url: 'http://13.209.40.5:8080/bitcamp/api/dust',
		type: 'GET',
		dataType: 'json',
		success: function(data){
			
			var itemlist = data.list ;
			
			var output ='';
			
			for(var i=0; i<itemlist.length; i++) {
				
				var stationName = itemlist[i].stationName;
				if(stationName == city){
					var mangName = itemlist[i].mangName; //도시 or 도로변 등 측정위치
					
					var pm10Value = itemlist[i].pm10Value;
					var pm10Grade1h = evalDust(pm10Value);
					
					var pm25Value = itemlist[i].pm25Value;
					var pm25Grade1h = evalFineDust(pm25Value);
					
					output += '<tr>\n';
					output += '	<td>' + stationName + '</td>\n';
					output += '	<td>' + mangName + '</td>\n';
					output += '	<td>' + pm10Value + '</td>\n';
					output += '	<td>' + pm10Grade1h + '</td>\n';
					output += '	<td>' + pm25Value + '</td>\n';
					output += '	<td>' + pm25Grade1h + '</td>\n';
					output += '</tr>\n';
				}
			}
			
			$('#apitourtable tbody').html(output);
			console.log('apitourtable: '+output);
		},
		complete: function(data){
			console.log('apitourtable: ccc'+ data);
		}
	});
}

//미세먼지 판별
function evalDust(d){
	
	var msg = '';
	if(d > 151){
		msg = '최악';
	} else if (d > 101){
		msg = '매우 나쁨';
	} else if (d > 76){
		msg = '상당히 나쁨';
	} else if (d > 51){
		msg = '나쁨';
	} else if (d > 41){
		msg = '보통';
	} else if (d > 31){
		msg = '양호';
	} else if (d > 16){
		msg = '좋음';
	} else {
		msg = '최고';
	}
	return msg;
}

//초미세먼지 판별
function evalFineDust(d){
	
	var msg = '';
	if(d > 76){
		msg = '최악';
	} else if (d > 51){
		msg = '매우 나쁨';
	} else if (d > 38){
		msg = '상당히 나쁨';
	} else if (d > 26){
		msg = '나쁨';
	} else if (d > 21){
		msg = '보통';
	} else if (d > 16){
		msg = '양호';
	} else if (d > 9){
		msg = '좋음';
	} else {
		msg = '최고';
	}
	return msg;
}


function goReview() {
	var data = sessionStorage.getItem("loginIdx");
	location.replace("http://52.78.80.232:8080/Bitcamp_Client/info.jsp?uIdx="+data);
}
function goBook() {
	var data = sessionStorage.getItem("loginIdx");
	location.replace("http://15.164.210.154:8080/bitcamp/info.jsp?uIdx="+data);
}


//상태 체크
function statusWithKakao() {
	Kakao.init('c92fdf9700af07e4c6d7df97d36e9bb4');
    Kakao.Auth.getStatusInfo(function(statusObj) {
        console.log('현재정보'+JSON.stringify(statusObj));
        if (statusObj.status == 'connected') {
            var user = statusObj.user;
            $('#userNoKakao').css('display', 'none');
            $('#userWithKakao').css('display', 'block');
           
            Kakao.API.request({
                url: '/v2/user/me',
                success: function(res) {
                	var email = user.kakao_account.email;
                	
                	var id = 'ID<span class="form-control">'+email+'</span>';
        			var name = 'name<span class="form-control">'+res.properties.nickname+'</span>';
                	var img = 'profile<br><img src = "'+res.properties.thumbnail_image+'">';
                	$('#userWithKakao #id2').html(id);
                	$('#userWithKakao #name2').html(name);
                	$('#userWithKakao #profile2').html(img);
                },
                fail: function(error) {
                    alert(JSON.stringify(error));
                }
            });
            
            console.log('연결된사용자 정보'+user.kakao_account.email);
        } 
    });
}











