<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header{height:200px;width:100%;border:1px solid black}

main{display:flex;height:600px;width:100%;border:5px solid red}
aside{overflow: scroll;height:600px;width:20%;border:1px solid orange}
#content{height:600px;width:80%;border:1px solid green}

footer{height:100px;width:100%;border:1px solid black}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
var state=0;

function getlist(){
	//$.ajax();->$.ajax({});->$.ajax({url,성공했을 때 함수 구현});
	$.ajax({
		url:"/list",
		success:function(result){$("#list").html(result);}
	});
}

function search(search){
	//$("#content").html(search);
	$.ajax({
		url:"/find?search="+search,
		success:function(result){$("#list").html(result);}
	});
	
}

function insert(){
	var name=document.getElementById("name").value
	var hp=document.getElementById("hp").value
	var memo=document.getElementById("memo").value
	if(name=="" || hp=="" || memo==""){
		alert("전부 입력하여 주시기 바랍니다.");
		return;
	}
	//document.querySelector("#name");
	console.log(name);
	console.log(hp);
	console.log(memo);
	//전화번호부를 입력하면 DB입력이되고 리스트에 출력
	//(DB입력 후 결과는 리스트를 가지고오라)
	$.ajax({
		url:"/insert?name="+name+"&hp="+hp+"&memo="+memo,
		success:function(result){$("#list").html(result);}
	});
	
	document.querySelector("#name").value="";
	document.querySelector("#hp").value="";
	document.querySelector("#memo").value="";
}

function getPhonebook(idx){
	console.log(idx);
	$.ajax({
		url:"/findOne?idx="+idx,
		success:function(result){$("#content").html(result);}
	});
}

function check(name,hp,memo,idx){
	if($('#banggo1').val()=="수정"){
		$('#banggo1').val("수정하기");
		$(function(){
			$("#pbName").removeAttr("readonly"); 
		    $("#pbHp").removeAttr("readonly");
		    $("#pbMemo").removeAttr("readonly");
		});
	}
	else if($('#banggo1').val()=="수정하기"){
		$('#banggo1').val("수정");
		$(function(){
		    $("#pbName").attr("readonly",true);        // readonly 처리
		    $("#pbHp").attr("readonly",true);        // readonly 처리
		    $("#pbMemo").attr("readonly",true);        // readonly 처리
		});
		$.ajax({
			url:"/update?name="+name+"&hp="+hp+"&memo="+memo+"&idx="+idx,
			success:function(result){$('#list').html(result); alert("수정성공");}
		});
	}
}

function deletepb(idx) {
	$.ajax({
		url:"/delete?idx="+idx,
		success:function(result){$('#list').html(result);alert("수정성공");$('#content').html($('#banggotext').val());}
	});
}
</script>

</head>
<body onload="getlist()">
<header>
<h3>전화번호부입력</h3>
<form action="/insertProc" method="post">
<lable for="name">이름:</lable>
<input type="text" id="name" name="name">
<br>
<lable for="hp">전화번호:</lable>
<input type="text" id="hp" name="hp">
<br>
<lable for="memo">메모:</lable>
<input type="text" id="memo" name="memo">
<br>
<!-- <input type="submit" value="전화번호입력"> -->
</form>
<input type="button" value="전화번호입력" onclick="insert()">
</header>

<main>
<aside>
<div id="search">검색<input type="text" name="search" onkeyup="search(this.value)"></div>
<div id="list">전체리스트 or 검색리스트 결과</div>
</aside>
<div id="content"></div>
</main>
<footer></footer>
</body>
</html>