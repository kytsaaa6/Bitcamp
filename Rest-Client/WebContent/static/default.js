/** REST API 용 JS임
 * 2019-08-26 작성 시작
 */


	$(document).ready(function() {
		list();
		
		//id check
		$('#id').focusout(function(){
			//ajax id전송 사용유무에 대한 결과 값 반환
			$.ajax({
				url: 'http://localhost:8080/mc/join/idcheck2', /* jsp를 사용하지 않고 바로 연결 */
				method: 'get',
				data: {
					id : $(this).val()
				},
				success: function(data){
						$(this).closest('h5').html('');
						$('#idcheck +h5').removeClass('color_red');
						$('#idcheck +h5').removeClass('color_blue');
						
					
					if(data == 'Y'){
						$('#idcheck').prop('checked', true);
						$('#idcheck +h5').html('사용가능한 멋진 아이디!');
						$('#idcheck +h5').addClass('color_blue');
					} else {
						$('#idcheck').prop('checked', false);
						$('#idcheck +h5').html('사용중인 아이디이거나 탈퇴한 회원입니다.');
						$('#idcheck +h5').addClass('color_red');
					}
				}
			});
		});
	});
	
	function join() {
		/*var formData = $('.contactForm').serializeObject();*/
		$.ajax({
			url:'http://localhost:8080/rc/join', //restful 어렵,,,ㅠㅠㅠㅠ
//			url:'http://localhost:8080/bitcamp/rest-users',
			type: 'POST',
			data: JSON.stringify({
					id: $('.contactForm #id').val(),
			    	  pw: $('.contactForm #pw').val(),
			    	  name: $('.contactForm #name').val(),
			    	  phone: $('.contactForm #phone').val()
			}),
			contentType: 'application/json;charset=utf-8',
			/*dataType: 'json',*/
			success: function(data) {
//				if(data > 0) {
					if(data = 'success' ) {
                    alert('성~~~공');
//                } else {
                } else if(data = 'fail') {
                    alert('실~~~패');
                    alert(JSON.stringify(data)); 
                }
			},
			error: function(data) {
				alert('에러,,,');
				alert(JSON.stringify(data)); 
			},
			complete: function(){
				list();
			}	
		});
	}
	
	function list(){
    	$.ajax({
		/* url:'http://localhost:8080/mc/rest/members', */
		//restful로 우회접근
		url:'http://localhost:8080/rc/list',
		type: 'GET',
		success: function(data) {
			 /*alert(JSON.stringify(data)); */
			var html = '';
			for(var i = 0 ; i < data.length ; i++){
				
				html += '<tr>\n';
				html += '	<td>' + data[i].idx +'</td>\n' ; 
				html += '	<td>' + data[i].id +'</td>\n' ;
				html += '	<td>' + data[i].name +'</td>\n' ; 
				html += '	<td>' + data[i].phone +'</td>\n' ;
				html += '	<td>' + data[i].verify +'</td>\n' ;
				html += '	<td>' + data[i].regdate +'</td>\n' ;
				html += '	<td>' + data[i].out +'</td>\n' ;
				html += '	<td><span class="btn_manage " onclick="edit('+data[i].idx+')">edit</span>' ;
				html += '	<span class="btn_manage" onclick="del('+data[i].idx+')">del</span></td>';
				html += '</tr>\n';
			}
			
			$('tbody').html(html);
			
			}
		});
	}
	
	function del(idx){
        if(confirm('delete??????')){
            $.ajax({
                url:'http://localhost:8080/bitcamp/rest-users/'+idx + '/del',
                type: 'PUT',
                success: function(data) {

                    if(data == 'success'){
                        alert('삭제되었습니다');
                    } else {
                        alert('실-패');
                    }
                },
                error: function(){
                    alert('error ㅠㅠㅠㅠ');
                },
                complete: function(){
                	list();
                }
            });
        }
    }
    
	function edit(idx) {
		if(confirm('정말 수정할거야?????리얼리????')){
			//data를 받아오는 타이밍이 달라져서 먼저 선언하고 넣어줘야 한다.
			$('#mEditForm').css('display','block');
			$.ajax({
				url:'http://localhost:8080/bitcamp/rest-users/'+idx,
				type: 'GET',
				success: function(data) {
					//alert(data.idx);
//					alert(JSON.stringify(data));
					
//					data =JSON.stringify(user);
					$('#idx2').val(idx);
					$('#id2').val(data.id);
					$('#name2').val(data.name);
					$('#phone2').val(data.phone);
				},
			});
		}
	}
	
	
	//수우우우저어어엉	
	$('#editform').submit(function() {
		var idx =  $('#idx2').val();
		
		$.ajax({
			url:'http://localhost:8080/bitcamp/rest-users/' + idx,
			type: 'PUT',
			data: JSON.stringify({
				idx: idx,
				id : $('#id2').val(),
				phone : $('#phone2').val(),
				name : $('#name2').val()
			}),
			contentType: 'application/json; charset=utf-8',
			success: function(data) {
				alert(data);
				
				if(data == 'success' ){
					alert('수정되었습니다');
				} else {
					alert('실-패');
				}
			},
			error: function(data){
				alert('error ㅠㅠㅠㅠ');
				alert(data);
			},
			complete: function() {
				list();
				$('#mEditForm').css('display','none');
//				location.href = "#member";
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

