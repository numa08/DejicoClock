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
		appendDejicoWithQuery(dejico);
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


var appendDejicoWithQuery = function(path) {
	var appendDejico = function(src) {
		$('.content').empty()
		            .append('<iframe class="dejico" width="100%" height="100%" src="' + src +'"></iframe>');
	}
	if (window.matchMedia("(min-width: 390px)").matches) {
		appendDejico('contents/medium/' + path);
	}
	if (window.matchMedia("(min-width: 700px)").matches) {
		appendDejico('contents/large/' + path);
	}

};