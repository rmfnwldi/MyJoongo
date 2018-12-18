<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/joongo/css/public.css" rel="stylesheet" type="text/css">
<link href="/joongo/css/report.css" rel="stylesheet" type="text/css">
<title>신고하기</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="/joongo/script/report.js" type="text/javascript"></script>
</head>
<body>
	<div class="middle">
		<div class="report_container">
			<div class="report_logo">
				<a href="#"> <img src="/joongo/image/logo100.png" class="report_logo_img">
				</a>
			</div>
			<form id="form" method="post" action="report.do" onsubmit="return false">
				<input type="hidden" name="claimeeNo" value="${claimee.userNo }">
				<div class="report">
					<h4 class="report_title">신고대상의 아이디</h4>
					<span class="box"> <input type="text" value="${claimee.loginId }" readonly id="userName">
					</span>
				</div>
				<div class="report">
					<h4 class="report_title">신고대상의 별명</h4>
					<span class="box"> <input type="text" value="${claimee.nickname }" readonly id="userNickname">
					</span>
				</div>
				<div class="report">
					<h4 class="report_title">신고사유</h4>
					<span class="box"> <select name="reportId" id="reason" class="select">
							<option value="0" disabled selected>--------------------------------------------신고사유----------------------------------------------------</option>
							<c:forEach var="report" items="${reportList }">
								<option value="${report.reportId }">${report.reportType }</option>
							</c:forEach>
							<option id="etc">기타</option>
					</select>
					</span>
					<p id="report_msg"></p>
				</div>
				<div>
					<h4 class="report_title">신고 내용</h4>
					<div>
						<textarea class="report-content" name="content" id="report-content" placeholder="100자이내로 써주세요."></textarea>
					</div>
					<p id="answer_msg"></p>
				</div>
				<div>
					<p class="ref">허위신고시 불이익을 받을 수 있습니다.</p>
				</div>
				<div class="report_submit">
					<input type="submit" value="신고하기" id="report">
				</div>
			</form>
		</div>
	</div>
</body>
</html>