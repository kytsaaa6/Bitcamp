<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>


<script>
$(document).ready(function () {
	
    $.ajax({          
        url: 'tour/data',
        type: 'get',
        dataType: 'json',
        success: function(msg){
            console.log(msg.response.body.items.item);
            var myItem = msg.response.body.items.item;
            
            for(var i=0; myItem.length; i++){
                var output = '';
                console.log(myItem.length);
                output += '<a href="tourDetail.jsp?contentid='+myItem[i].contentid+'?title='+myItem[i].title+'">';
                output += '<div id="tourinfo">';
                output += '<img src="'+myItem[i].firstimage2+'" width="250px" height="150px">';
                output += '<h4>'+myItem[i].title+'</h4>';
                output += '</div>';
                output += '</a>';
                /* output += '<h4>'+myItem[i].addr1+'</h4>';
                output += '<h4>'+myItem[i].contentid+'</h4>';
                output += '<h4>'+myItem[i].contenttypeid+'</h4>';
                output += '<img src="'+myItem[i].firstimage+'"><br>'; */
                /* output += '<h4>'+myItem[i].overview+'</h4>';
                output += '<h4>'+myItem[i].tel+'</h4>'; */
                document.body.innerHTML += output;
            }
        }
    });    
    
});
</script>