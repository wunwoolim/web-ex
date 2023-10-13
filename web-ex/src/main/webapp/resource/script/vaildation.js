/**
 * 
 */
const form = document.getElementById("form");
form.addEventListener("submit", e =>{
	e.preventDefault();
	checkForm(form);
});



function checkForm(form){
	
	username = form.username.value;
	userpassword = form.userpassword.value;
	name = form.name.value;
	birth = form.birth.value;
	gender = form.gender.value;
	tel = form.tel.value;
	pnum = form.pnum.value;
		
	if(username == ""){
		document.getElementById("usernameCheck").style.display = "block";
	}else if(userpassword == ""){
		document.getElementById("usernameCheck").style.display = "none";
		document.getElementById("passwordCheck").style.display = "block";
	}else if(name == ""){
		document.getElementById("passwordCheck").style.display = "none";
		document.getElementById("nameCheck").style.display = "block";
	}else if(birth == ""){
		document.getElementById("nameCheck").style.display = "none";
		document.getElementById("birthCheck").style.display = "block";
	}else if(gender == ""){
		document.getElementById("birthCheck").style.display = "none";
		document.getElementById("genderCheck").style.display = "block";
	}else if(tel == ""){
		document.getElementById("genderCheck").style.display = "none";
		document.getElementById("telCheck").style.display = "block";
	}else if(pnum == ""){
		document.getElementById("telCheck").style.display = "none";
		document.getElementById("pnumCheck").style.display = "block";
	}else{
		form.submit();
	}
	
	
	
}