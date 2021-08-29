(function () {
	// connection object made with generated proxy
	var myHub = $.connection.sessionHub;
	$.connection.hub.start()
	.done(function() {
		// data goes to server side
		myHub.server.announce("A new connection has been made <br />");
	})
	.fail(function() {
		alert("Error connecting to signal");
	})

	// data taken by clients
	myHub.client.announce = function (message) {
		$("#chatroom").append(message);
	};

	$(function () {
		$("form").bind("keypress", function (e) {
			if (e.keyCode == 13) {
				// announce
				myHub.server.announce($("#chat").val() + "<br />");
				return false;
			}
		});
	}
	);

})();

