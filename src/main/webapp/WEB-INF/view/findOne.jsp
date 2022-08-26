<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<input type="text" id="pbName" value="${phonebook.name}" readonly="readonly"><br>
<input type="text" id="pbHp" value="${phonebook.hp}" readonly="readonly"><br>
<input type="text" id="pbMemo" value="${phonebook.memo}" readonly="readonly"><br>
<input id="banggo1" type="button" value="수정" onclick="check($('#pbName').val(),$('#pbHp').val(),$('#pbMemo').val(),'${phonebook.idx}')" />
<input type="button" value="삭제" onclick="deletepb('${phonebook.idx}')">

<input type="text" id="banggotext" value="전화번호를 클릭하시면 상세하게 볼 수 있습니다." readonly style="width:100px;text-align: center;">
