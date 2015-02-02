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
		var targetOffset = $('#dejico' + index).offset().top;
		$('html,body').animate({scrollTop: targetOffset}, 1000);

		var newIndexes = selectedIndexes.concat([index]);
		if (data.contents.length == newIndexes.length) {
			newIndexes = [];
		}

		var date = new Date();
		var interval = 60 - date.getSeconds();
		setTimeout(function(){
			updateDejico(data, newIndexes);
		}, interval * 1000);
	}


    var arrangeDejico = function(data) {
    	$(data.contents).sort(function() {
    		return Math.random() - Math.random();
    	}).map(function (idx, elem) {
    		var path;
			if (window.matchMedia("(min-width: 390px)").matches) {
				path = 'contents/medium/' + elem;
			}
			if (window.matchMedia("(min-width: 700px)").matches) {
				path = 'contents/large/' + elem;
			}
			return path;
    	}).each(function (idx, elem){
    		$('.content').append('<iframe id="dejico' + idx + '" class="dejico" width="100%" height="100%" src="' + elem +'"></iframe>');
    	});
    	updateDejico(data, []);
    }
	loadDejico("./datasource/dejico.json", function(data) {
		arrangeDejico(data);
	});
});