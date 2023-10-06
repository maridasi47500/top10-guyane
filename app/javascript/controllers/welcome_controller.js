
  function on() {
      document.getElementById("overlay").style.display = "block";
  }

  function off() {
      document.getElementById("overlay").style.display = "none";
  }

$(function(){
	$("#connection").click(function(){
      document.getElementById("overlay").style.display = "block";

	});
	$(".lien-seconnecter").click(function(){
      document.getElementById("overlay").style.display = "block";
      document.getElementById("overlay_i").style.display = "none";
		return false;

	});
	$(".lien-sinscrire").click(function(){
      document.getElementById("overlay").style.display = "none";
      document.getElementById("overlay_i").style.display = "block";
		return false;


	});
	$(".close").click(function(){
      document.getElementById("overlay").style.display = "none";
		return false;


	});
	$(".close-i").click(function(){
      document.getElementById("overlay_i").style.display = "none";
		return false;


	});
		// Get the snackbar DIV
	window.onload=function(){
		   var x = document.getElementById("snackbar");
		
		     // Add the "show" class to DIV
		if (x.innerHTML.length > 0){
		       x.className = "show";
		
		         // After 3 seconds, remove the show class from DIV
		           setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
		}
		}

});
