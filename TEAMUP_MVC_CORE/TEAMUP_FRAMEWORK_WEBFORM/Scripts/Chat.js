function btnChatClick() {
    if ($("#chat-popup").css('display') == 'none') {
        $("#chat-popup").css({ 'display': 'flex' });
    } else {
        $("#chat-popup").css({ 'display': 'none' });
    }

    return false;
}
;