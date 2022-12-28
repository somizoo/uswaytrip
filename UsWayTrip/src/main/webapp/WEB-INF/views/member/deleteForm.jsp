<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function check(){
		if(document.del.member_pw.value == ""){
			alert("비밀번호를 입력 해주시기 바랍니다");
		}else{
			document.del.member_pw.value = btoa(document.del.member_pw.value);
			
			document.del.submit();
		}
	}
</script>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<div align="center">
	<form action="${path }delete" method="post" name = "del">
		<table border="1">
			<tr>
				<th>${id }님의 비밀번호 확인</th>
			</tr>
			<tr>
				<td>
					<div style="height: 20px"></div>
					<input type="password" name = "member_pw" placeholder="비밀번호 확인" >
					<div style="height: 20px"></div>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="탈퇴" onclick="javascript:check()" class="btn btn-dark">
					<input type="button" onclick="location.href='${path }myPageForm'" value="돌아가기" class="btn btn-dark">				
				</td>
			</tr>
		</table>
	</form>
</div>

