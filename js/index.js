$(".addgroup").click(function(){
	alert("hello");
});



$("#login").click(function(){
		var username=$("#username").val();
		var password=$("#password").val();
//alert (password);
		if (username=='') {

			alert("Please Enter Your Username");
		}else if (password=='') {
			alert("Please Enter Your Password");
		}else{
			$.ajax({
				type:"POST",
				url:"submit_login.php",
				data:{username:username,password:password},
				cache:false,
				success:function(data){
					//alert(data);
					if (data.indexOf("success")> -1) {
						alert("yes");
					}else{
						alert("no");
					}
				}
			});
		}
		//alert("hnuyhnj");
	});