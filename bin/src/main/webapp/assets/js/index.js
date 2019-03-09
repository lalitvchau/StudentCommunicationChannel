function doMatchPassword() {
	var password = document.getElementById("signup_password").value;
	var password_confom = document.getElementById("signup_conf_password").value;
	if (password == password_confom) {
		return true;
		;
	} else {
		var errMsg = document.getElementById("msgPass");
		errMsg.innerHTML = "Confom and Password mismatch";
		errMsg.style.color = '#ffbda8';
		var errMsg = document.getElementById("msgPass1");
		errMsg.innerHTML = "Confom and Password mismatch";
		errMsg.style.color = '#ffbda8';
		return false;
	}
}