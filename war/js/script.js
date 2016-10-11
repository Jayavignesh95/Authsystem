/**
 * 
 */function validateForm()
{
    if(checkEmail(frm.rname.value))
    {
      alert("Incorrect User Name");
      frm.rname.focus();
      return false;
    }
    else if(frm.rpwd.value=="")
    {
      alert("Password should be left blank");
      frm.rpwd.focus();
      return false;
    }
}
 
 function checkEmail(inputvalue){	
	    var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
	    if(pattern.test(inputvalue)){  
	    	console.log("Pattern Matched ");
			return false;   
	    }else{
	    	console.log("Pattern Failed");
			return true; 
	    }
	}