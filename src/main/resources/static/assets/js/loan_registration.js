javascript:doRefreshCaptcha()// JavaScript Document

// JavaScript Document
/****************************************************/
//		### Checking Function ###
//		1.   IsEmailCorrect(szEmail)
//		2.   IsEmpty(szStr)
//		3.   IsEngString(szStr)
//		4.   IsThaiString(szStr)
//		5.   IsAlphaNumeric(szStr)
//		6.   IsNumeric2(szStr)
//		7.   IsInteger(szStr)
//		8.   IsDecimal(szStr, leading, decimal)
//		9.   IsOnlyNumber(szStr)
//		10.  CheckMaximumValue(szStr,dbMax)
//		11.  FormatNumber(obj,digit)
//		12.  NotKeyChar(obj)
//		12.  replaceNumber(obj)  
//		13.  textCounter(obj,maxlimit)
//      14.  checkNumeric
//      15.  isNumeric
//      16.  isAlphabet
//      17.  emailValidator
//      18. validateform
/****************************************************/
function IsEmailCorrect(szEmail) 
{
	var i;
	var strtmp = Trim(szEmail);

	for (i=0; i<strtmp.length; i++) {
		if (strtmp.charAt(i) > 'z' || strtmp.charAt(i) < '-' || ("/:;<=>?[\\]^` ".indexOf(strtmp.charAt(i)) != -1))
			return false;
	}
	if (CountStr(strtmp, "@") != 1 || strtmp.indexOf("..") != -1)
		return false;

	if (strtmp.charAt(0) == '@' || strtmp.charAt(strtmp.length - 1) == '@')
		return false;

	while ((i = strtmp.indexOf(".")) != -1) {
		if (i <= 0 || i >= (strtmp.length - 1))
			return false;
		if (strtmp.charAt(i - 1) == '@' || strtmp.charAt(i + 1) == '@')
			return false;
		strtmp = strtmp.substring(i + 1);
	}

	return true;
}

// return true if szStr contains space or empty. Otherwise, return false
function IsEmpty(szStr) 
{
	for(var i=0; i<szStr.length; i++) {
		if(szStr.charAt(i) == ' ')
			szStr = szStr.substring(i-- + 1, szStr.length);
		else
			break;
	}
	if(szStr.length)
		return false;
	else
		return true;
}

function IsEngString(szStr) 
{
	szStr = szStr.toLowerCase();
	for(var i=0; i<szStr.length; i++) {
		if(!((szStr.charAt(i) >= 'a' && szStr.charAt(i) <= 'z') || szStr.charAt(i) == ' ' || szStr.charAt(i) == '.'))
			return false;
	}
	return true;
}

function IsThaiString(szStr) 
{
	for(var i=0; i<szStr.length; i++) {
		if(szStr.charCodeAt(i) <= 128 && szStr.charAt(i) != ' ')
			return false;
	}
	return true;
}

function IsAlphaNumeric(szStr) 
{
	szStr = szStr.toLowerCase();
	for(var i=0; i<szStr.length; i++) {
		if(!((szStr.charAt(i) >= 'a' && szStr.charAt(i) <= 'z') || (szStr.charAt(i) >= '0' && szStr.charAt(i) <= '9')))
			return false;
	}
	return true;
}

function IsNumeric2(szStr) 
{
	for(var i=0; i<szStr.length; i++) {
		if("0123456789+-.,".indexOf(szStr.charAt(i)) == -1)
			return false;
	}
	return true;
}

function IsInteger(szStr) 
{
	for(var i=0; i<szStr.length; i++) {
		// dot is not allow for integer
		if("0123456789+-,".indexOf(szStr.charAt(i)) == -1)
			return false;
	}
	return true;
}

function IsDecimal(szStr, leading, decimal) 
{
	var dotCount = 0;
	for(var i=0;i<szStr.length;i++) {
		if("0123456789+-.,".indexOf(szStr.charAt(i)) == -1) {
			return false;
		}
		else { // need to check if there are more than one dot
			if(".".indexOf(szStr.charAt(i)) != -1)
				dotCount++;
		}
	}

	if(dotCount > 1)  // more than one dot
		return false;

	if(decimal < 1 && dotCount > 0)
		return false;

	var dotIndex = szStr.indexOf(".");
	if(dotIndex == -1) { // no dot, consider only leading and leght of number
		if(szStr.length > leading)
			return false;
	}
	else {
		if(dotIndex > leading)  // integer number is more than leading allow
			return false;
		if((szStr.length - (dotIndex+1)) > decimal) // decimal number is more than decimal allow
			return false;
	}

	return true;
}

function IsOnlyNumber(szStr) 
{
		for(var i=0;i<szStr.length;i++) {
			// except number, nothing is allow
			if("0123456789".indexOf(szStr.charAt(i)) == -1)
				return false;
		}
		return true;
}
function CheckMaximumValue(szStr,dbMax)
{
		var strAmount = szStr;
		strAmount = strAmount.replace(/,/gi,"");
		var dbAmount = parseFloat(strAmount);
		if ( dbAmount >= dbMax )
		{
			return false;
			
		}
		return true;
}
function FormatNumber(obj,digit){
	var val = obj.value;
	val = val.replace(new RegExp(',', 'g'), '');
	if(val != ''){
		var x1 = '';
		var x2 = '';
		if(digit > 0){
			
			var t = parseFloat(val);
			var numberTmp = t.toFixed(digit);
			x = numberTmp.split('.');
	
			var zero = '';
			for(i=1;i<=digit;i++){
				zero=zero+'0';
			}
			x1 = x[0];
			x2 = '';
			if(x[1].length > 0){
				x2 = x[1].length > 1 ? '.' + x[1] : '.'+zero;
		    }else{
		    	x2 = '.'+zero;
		    }
		}else{
			x1 = val;
			var t = parseFloat(val);
			if(t<=0){
				x1 = 0;
			}
		}
	    var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }
        obj.value = x1+x2;
     }
}
function NotKeyChar(obj){
	var szStr = obj.value;
	var tempStr = '';
	for(var i=0; i<szStr.length; i++) {
		var strChk = szStr.charAt(i);
		if("0123456789.".indexOf(strChk) > -1){
			tempStr+=strChk
		}else{
			
		}
	}
	obj.value = tempStr;
	var count = 0;
	var tempStr2 = '';
	for(var i=0; i<tempStr.length; i++) {
		var strChk1 = tempStr.charAt(i);
		if(".".indexOf(strChk1) > -1){
			count = count+1;
		}
		if(count>1){
			if(".".indexOf(strChk1)>-1){
			}else{
				tempStr2+=strChk1;
			}
		}else{
			tempStr2+=strChk1;
		}
	}
	var newStr = parseFloat(tempStr2);
	if('NaN'.indexOf(newStr) > -1){
		newStr = '';
	}
	obj.value = tempStr2;
}

function NotKeyCharNonDot(obj){
	var szStr = obj.value;
	var tempStr = '';
	for(var i=0; i<szStr.length; i++) {
		var strChk = szStr.charAt(i);
		if("0123456789".indexOf(strChk) > -1){
			tempStr+=strChk
		}
	}
	var newStr = parseFloat(tempStr);
	if('NaN'.indexOf(newStr) > -1){
		newStr = '';
	}
	obj.value = tempStr;
}
function parseFloatStr(obj){
	var szStr = obj.value;
	var chk = parseFloat(szStr);
	if(chk != 'NaN'){
		obj.value = chk;
	}
}

function replaceNumber(obj){
	var szStr = obj.value;
	obj.value = szStr.replace(/,/g,'');
}

function textCounter(obj,maxlimit) {
	if(obj.value != ''){
		if (obj.value.length > maxlimit)
			obj.value = obj.value.substring(0, maxlimit);
	}
}



function checkNumeric(elem){
	var numericExpression = /^[0-9]+$/;
	if(!elem.value.match(numericExpression)){
		alert('กรุณากรอกตัวเลขเท่านั้นค่ะ');
		elem.focus();
	}
}

function isNumeric(elem){
	var val = elem.value;
	var numericExpression = /^[0-9]+$/;
	if(val != '' && !val.match(numericExpression)){
		alert('กรุณากรอกตัวเลขเท่านั้นค่ะ');
		elem.value = "";
		elem.focus();
		return false;
	}
}
function isCurrency(elem){
	var val = elem.value;
	var numericExpression = /(?=.)^\$?(([1-9][0-9]{0,2}(,[0-9]{3})*)|[0-9]+)?(\.[0-9]*)?$/;
	if(val != '' && !val.match(numericExpression)){
		alert('กรุณากรอกตัวเลขเท่านั้นค่ะ');
		elem.value = "";
		elem.focus();
		return false;
	}
}

function isAlphabet(elem){
	var alphaExp = /^[a-zA-Z]+$/;
	if(elem.value.match(alphaExp)){
		return true;
	}else{
		alert('กรุณากรอกตัวอักษรเท่านั้นค่ะ');
		elem.focus();
		return false;
	}
}

function emailValidator(elem){
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if(elem.value.match(emailExp)){
		return true;
	}else{
		alert('กรุณากรอกอีเมล์ให้ถูกต้องด้วยค่ะ');
		elem.focus();
		return false;
	}
}


var changed = false;
// Validation Capcha
function validateform(){
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
   
/*
    if(changed==false){
		alert("กรุณากรอกข้อมูลให้ครบถ้วนด้วยค่ะ");
		return false;
	}
*/
	if(document.getElementById('prefix').value ==""){
		alert("กรุณาระบุคำนำหน้าชื่อด้วยค่ะ");
		document.getElementById('prefix').focus();
		return false;
	}else if(document.getElementById('firstname').value ==""){
		alert("กรุณากรอกชื่อด้วยค่ะ");
		document.getElementById('firstname').focus();
		return false;
	}else if(document.getElementById('lastname').value ==""){
		alert("กรุณากรอกนามสกุลด้วยค่ะ");
		document.getElementById('lastname').focus();
		return false;
	}else if(document.getElementById('age').value ==""){
		alert("กรุณากรอกอายุด้วยค่ะ");
		document.getElementById('age').focus();
		return false;
	}else if(document.getElementById('province').value ==""){
		alert("กรุณาระบุจังหวัดที่อยู่ปัจจุบันด้วยค่ะ");
		document.getElementById('province').focus();
		return false;
	}else if(document.getElementById('tel').value ==""){
		alert("กรุณาระบุเบอร์โทรศัพท์ที่ติดต่อได้ด้วยค่ะ");
		document.getElementById('tel').focus();
		return false;
	}else if(document.getElementById('email').value ==""){
		alert("กรุณาระบุอีเมล์ด้วยค่ะ");
		document.getElementById('email').focus();
		return false;
	}else if(document.getElementById('email').value !=="" && !document.getElementById('email').value.match(emailExp)){
		alert('กรุณากรอกอีเมล์ให้ถูกต้องด้วยค่ะ');
		document.getElementById('email').focus();
		return false;
	}else if(document.getElementById('brand').value ==""){
		alert("กรุณาระบุยี่ห้อด้วยค่ะ");
		document.getElementById('brand').focus();
		return false;
	}else if(document.getElementById('model').value ==""){
		alert("กรุณาระบุรุ่นด้วยค่ะ");
		document.getElementById('model').focus();
		return false;
	}else if(document.getElementById('year_registration').value ==""){
		alert("กรุณาระบุปีที่จดทะเบียนด้วยค่ะ");
		document.getElementById('year_registration').focus();
		return false;
	}else if(document.getElementById('income').value ==""){
		alert("กรุณาระบุรายได้สุทธิต่อเดือนด้วยค่ะ");
		document.getElementById('income').focus();
		return false;
	}else if(document.getElementById('loan_amount').value ==""){
		alert("กรุณาระบุวงเงินขั้นต่ำที่ต้องการด้วยค่ะ");
		document.getElementById('loan_amount').focus();
		return false;
	}else if(document.getElementById('period').value ==""){
		alert("กรุณาระบุระยะเวลาในการชำระคืนด้วยค่ะ");
		document.getElementById('period').focus();
		return false;
	}else if(document.getElementById('captchaText').value ==""){
		alert('กรุณาระบุรหัสยืนยันด้วยคะ');
		document.getElementById('captchaText').focus();
		return false;
	}else if(!document.getElementById('tiscoPublicFlag').checked){
		alert('กรุณาเลือกยินยอมในการให้ข้อมูลผ่านการสมัครช่องทางออนไลน์กับกลุ่มทิสโก้');
		return false;
	} else{
		return true;
	}
	
	
}



$('.btn-cancel').click(function(){
	$('#firstname').val('');
	$('#lastname').val('');
	$('#age').val('');
	$('#province').val('');
	$('#tel').val('');
	$('#email').val('');
	$('#income').val('');
	$('#loan_amount').val('');
	$('#period').val('');
	
});

$( "input[type='text']" ).change(function() {
   changed = true;
});




