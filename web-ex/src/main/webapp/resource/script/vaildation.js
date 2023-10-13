/**
 * 
 */

function checkForm(form){
	
	username = form.username.value;
	userpassword = form.userpassword.value;
	name = form.name.value;
	birth = form.birth.value;
	gender = form.gender.value;
	tel = form.tel.value;
	pnum = form.pnum.value;
	
	if(username == ""){
		alert("아이디는 필수 입력값입니다.");
	}else if(userpassword == ""){
		alert("비밀번호는 필수 입력값입니다.");
	}else if(name == ""){
		alert("이름은 필수 입력값입니다.");
	}else if(birth == ""){
		alert("생년월일은 필수 입력값입니다.");
	}else if(gender == ""){
		alert("성별은 필수 선택값입니다.");
	}else if(tel == ""){
		alert("통신사는 필수 선택값입니다.");
	}else if(pnum == ""){
		alert("핸드폰 번호는 필수 입력값입니다.");
	}else{
		form.submit();
	}
	
	
	
}