(function () {
    var canvas = document.getElementById("canvas-board");
    var ctx = canvas.getContext('2d');

    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight - 72;

    // local dynamic canvas resize 
    $(window).resize(function () {
        var temp_cnvs = document.createElement('canvas');
        var temp_cntx = temp_cnvs.getContext('2d');

        temp_cnvs.width = window.innerWidth;
        temp_cnvs.height = window.innerHeight - 72;

        //temp_cntx.fillStyle = "red";
        //temp_cntx.fillRect(0, 0, window.innerWidth, window.innerHeight);
        temp_cntx.drawImage(canvas, 0, 0);

        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight - 72;

        ctx.drawImage(temp_cnvs, 0, 0);
    });

    /*
    // local painting
    let painting = false;

    function startPosition(e) {
        painting = true;
        draw(e);
    }
    function finishedPosition() {
        painting = false;
        ctx.beginPath();
    }
    
    function draw(e) {
        if (!painting) return;
        ctx.lineWidth = 1;
        ctx.lineCap = "round";
        //ctx.strokeStyle = "red";

        ctx.lineTo(e.clientX, e.clientY-50);
        ctx.stroke();
        //ctx.beginPath();
        //ctx.moveTo(e.clientX, e.clientY-50);
    }

    $(canvas).mousedown(function (e) { startPosition(e) });
    $(canvas).mouseup(function (e) { finishedPosition() });
    $(canvas).mousemove(function (e) { draw(e) });
    */
    let data = {
        x: window.innerWidth / 2,
        y: (window.innerHeight - 72) / 2,
        force: 1,
        color: "black"
    }


    // connection object made with generated proxy
    var myHub = $.connection.sessionHub;
    var prevPoint;
    var color = "black";
    var currentForce = 1;

    function force(e) {
        currentForce = e.webkitForce || 1;
    }

    // data taken by clients
    myHub.client.coord = function (data) {
        // data {x, y, size, color}
        //console.log(data);
        /*
        ctx.lineWidth = data.width;
        ctx.lineCap = "round";
        //ctx.strokeStyle = "red";
        
        ctx.lineTo(data.x, data.y);
        ctx.stroke();
        */
        ctx.beginPath();
        ctx.moveTo(data.prevPoint.x, data.prevPoint.y);
        ctx.lineTo(data.x, data.y);
        ctx.strokeStyle = data.color;
        ctx.lineWidth = Math.pow(data.force || 1, 4) * 2;
        ctx.lineCap = 'round';
        ctx.stroke();
    };

    function sendStart(e) {
        if (!prevPoint) {
            prevPoint = { x: e.offsetX, y: e.offsetY };
        }
        // get mouse x, y, Width and Color and send as data
        data.prevPoint = prevPoint;
        data.x = e.offsetX;
        data.y = e.offsetY;
        data.force = currentForce;
        data.color = color;
        myHub.server.coord(data);

        prevPoint = { x: e.offsetX, y: e.offsetY };
    }

    function sendMove(e) {
        // left mouse button
        if (e.buttons) {
            if (!prevPoint) {
                prevPoint = { x: e.offsetX, y: e.offsetY };
                return;
            }
            // get mouse x, y, Width and Color and send as data
            data.prevPoint = prevPoint;
            data.x = e.offsetX;
            data.y = e.offsetY;
            data.force = currentForce;
            data.color = color;
            myHub.server.coord(data);

            prevPoint = { x: e.offsetX, y: e.offsetY };
            
        }
    }

    function sendStop(e) {
        prevPoint = undefined;
    }
    // remote painting from data
    $(canvas).mousedown(function (e) { sendStart(e) });
    $(canvas).mousemove(function (e) { sendMove(e) });
    $(canvas).mouseup(function (e) { sendStop(e) });
    window.onwebkitmouseforcechanged = force;
})();