var runOnSeconds = function(handler, seconds) {
	return setInterval(function() {
		var date = new Date();
		if (seconds != date.getSeconds()) {
			return;
		}
		handler();
	}, 100);
};