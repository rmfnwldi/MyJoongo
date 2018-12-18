<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

	<div id="registerPopup-popup_mask"></div>
	<!-- 팝업 배경 DIV -->

	<div id="registerPopup-popupDiv">
		<!-- 팝업창 -->

		<img id="registerPopup-loginImg" src="/joongo/image/logo100.png">
		<img id="registerPopup-popCloseImg"
			src="/joongo/image/loginCloseBtn.png">
		<div id="registerPopup-popupTitle">중고장터로 중고거래 시작하기</div>
		<div id="registerPopup-popupText">
			로그인하고 빠르고 안전하게 중고거래를 시작하세요!<br> 단 15초면 회원가입 완료!
			<div id="registerPopup-loginAPI">
				<a id="kakao-login-btn"></a> <a
					href="http://developers.kakao.com/logout"></a>
			</div>

			<!-- <div id="registerNormal">
				<a id="normal-login-btn"></a> <a href="registerForm.do"></a>
			</div> -->
		</div>
		<div id="registerPopup-signupPopup">
			<a href="registerForm.do">회원가입</a>
		</div>
	</div>
	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('5e7ba7b367a3ddeee8bfc6511796f9b2');

		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) {

				// 로그인 성공시, API를 호출합니다.
				Kakao.API.request({
					url : '/v1/user/me',
					success : function(res) {
						console.log(res);

						var userID = res.id; //유저의 카카오톡 고유 id
						var userEmail = res.kaccount_email; //유저의 이메일
						var userNickName = res.properties.nickname; //유저가 등록한 별명

						location.href="registerFormKakao.do?loginId="+userID+"&email="+userEmail+"&nickname="+userNickName;

					},
					fail : function(error) {
						alert(JSON.stringify(error));
					}
				});
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});
		//]]>
	</script>
