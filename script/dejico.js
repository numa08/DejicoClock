var loadDejico = function(path, handler){
    $.ajax({
		url: path
	}).done(function(data){
		handler(data);
	});
};

$(function() {

	var updateDejico = function(data, selectedIndexes) {
		var index = Math.floor(Math.random() * data.contents.length);
		var dejico = data.contents[index];
		var newIndexes = selectedIndexes.concat([index]);
		if (data.contents.length == newIndexes.length) {
			newIndexes = [];
		}
		//TODO update image
		var date = new Date();
		var interval = 60 - date.getSeconds();
		console.log('did update dejico index ' + index);
		setTimeout(function(){
			updateDejico(data, newIndexes);
		}, interval * 1000);

	}

	loadDejico("./datasource/dejico.json", function(data) {
		updateDejico(data, []);
	});
});

var dejiko = function() {
	$('.content').empty()
	             .append('<iframe class="dejico" width="100%" height="100%" src="contents/2.html"></iframe>');
}