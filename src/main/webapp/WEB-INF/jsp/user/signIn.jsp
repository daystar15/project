<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container w-25">
	<form method="post" action="/user/sign_in" id="loginForm">
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text">ID</span>
			</div>
			<input text="text" id="user_id" name="user_id" placeholder="Username" class="form-control">
		</div>
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text">PW</span>
			</div>
			<input text="password" id="password" name="user_pwd" class="form-control">
		</div>
		<input type="submit" class="btn btn-primary w-100" value="로그인">
	</form>
</div>

<script>
	$(document).ready(function() {
		$('#loginForm').on('submit', function(e) {
			e.preventDefault(); // 로그인 버튼을 눌러도 화면이 그대로 (아이디, 비번 입력안했을 때)
			
			// validation
			// return false;
			let userId =  $('input[name=user_id]').val().trim();
			let password =  $('#password').val();
			
			if (userId == '') {
				alert('아이디를 입력해주세요.');
				return false;
			}
			
			if (password == '') {
				alert('비밀번호를 입력해주세요.');
				return false;
			}
			
			// ajax
			let url = $(this).attr('action'); // /user/sign_in
			//console.log(url);
			let params = $(this).serialize(); // loginId=test&password=test
			//console.log(params);
			
			$.post(url, params)  // request
			.done(function(data) { // response
				if (data.code == 200) { // 성공
					location.href = '/menu'; // 메뉴로 이동
				} else { // 실패
					alert(data.errorMessage);
				}
			});
			
		});
	});
</script>