$(document).ready(function(){
	// This is football's JS file

	var textval = $('#txtConfirm').val();

	$('#btnSend').click(function(){
			DoIt();
			console.log("You pressed send");
			// console.log("Textval =" + textval);
			// if (isNaN(textval)){
			// 	console.log("Is not a number");
			// } else {
			// 	console.log("Is a number");
			// };

	});

	function DoIt(textval){
		var name = $('#txtName').val();
		var stat = $('#txtStat').val();
		var option = $('#playerType').val();

		console.log(option + " " + name + " " + stat);
		$.ajax({
			url: '/main/saveplayer',
			type: 'POST',
			data: {name: name, stat: stat, option: option}
		});
	};
});