function load_image(){
	$("#image_file").on("change", (event) => {
	  const reader = new FileReader();
	  reader.onloadend = () => {
	    $("#user_image").val(reader.result.split('base64,')[1]); // save encoded image
	  }
	  reader.readAsDataURL($(event.currentTarget)[0].files[0]);
	});
};

$(document ).ready(function() {
    $("#image_file").on("change", (event) => {
	  const reader = new FileReader();
	  reader.onloadend = () => {
	    $("#image").val(reader.result.split('base64,')[1]); // save encoded image
	  }
	  reader.readAsDataURL($(event.currentTarget)[0].files[0]);
	});
});
