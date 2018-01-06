			function printfunc(e){
				document.getElementById("getsmart").style.color = "#402313";
				document.getElementById("getsmart").style.textShadow = "3px 3px 20px #FBFAFA";				
			}
			function printdel(e){
				document.getElementById("getsmart").style.color = "#FCFAFA";
				document.getElementById("getsmart").style.textShadow = "2px 2px 50px #020000";
			}
			function fadefunc(e){
				 var x=document.getElementsByClassName("appear");
				 var i;
				 for(i=0;i<6;i++){
					x[i].style.WebkitAnimationName ="example";
					x[i].style.display="block";
				 }
			}
			function fadedel(e){
				var x=document.getElementsByClassName("appear");
				for(i=0;i<6;i++){
					x[i].style.WebkitAnimationName ="none";
					x[i].style.display="none";
				 }
				<!---webkit-animation-name: example; /* Chrome, Safari, Opera */-->
				<!---webkit-animation-duration: 4s; -->
			}
