(function () {
    var popup = document.getElementById("chat-popup");
    var chat = $("#chat");

    // connection object made with generated proxy
    var myHub = $.connection.sessionHub;
    $.connection.hub.start()
        .done(function () {
            // data goes to server side
            myHub.server.announce("A new connection has been made <br />");
        })
        .fail(function () {
            alert("Error connecting to signal");
        })

    // data taken by clients
    myHub.client.announce = function (message) {
        $("#chat-room").append(message);
        popup.scrollTop = popup.scrollHeight;
    };

    $(function () {
        $("form").bind("keypress", function (e) {
            if (e.keyCode == 13) {
                // announce
                if (chat.val() != "") {
                    myHub.server.announce(chat.val() + "<br />");
                    chat.val("");
                }
                return false;
            }
        });
    }
    );

})();

