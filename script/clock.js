var runOnSeconds = function(handler, seconds) {
	setInterval(function() {
		var date = new Date();
		if (seconds != date.getSeconds()) {
			return;
		}
		handler();
	}, 100);
};

$(function  () {
	var updateClock = function() {
		var date = new Date();
		var hour = date.getHours() > 9 ? date.getHours() : "0" + date.getHours();
		var minutes = date.getMinutes() > 9 ? date.getMinutes() : "0" + date.getMinutes();
		var currenClock = hour + ":" + minutes;
		$('#clock').text(currenClock);
	};

	runOnSeconds(updateClock, 0);
	updateClock();
});