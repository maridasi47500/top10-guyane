
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

});
