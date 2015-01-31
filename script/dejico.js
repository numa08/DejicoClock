var loadDejico = function(path, handler){};

$(function() {

	var updateDejico = function(data, selectedIndexes) {
		var index = 0;//todo
		var dejico = data.contents[index];
		var newIndexes = selectedIndexes.concat([index]);
		if (data.contents.length == newIndexes.length) {
			newIndexes = [];
		}
		//TODO update image
		var date = new Date();
		var interval = 60 - date.getSeconds();
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