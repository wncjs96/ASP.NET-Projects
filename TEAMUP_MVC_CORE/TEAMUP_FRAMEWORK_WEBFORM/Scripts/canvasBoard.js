(function () {
    var canvas = document.getElementById("canvas-board");
    var ctx = canvas.getContext('2d');

    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight-72;

    //dynamic canvas resize
    $(window).resize(function () {
        var temp_cnvs = document.createElement('canvas');
        var temp_cntx = temp_cnvs.getContext('2d');

        temp_cnvs.width = window.innerWidth;
        temp_cnvs.height = window.innerHeight-72;

        //temp_cntx.fillStyle = "red";
        //temp_cntx.fillRect(0, 0, window.innerWidth, window.innerHeight);
        temp_cntx.drawImage(canvas, 0, 0);

        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight-72;

        ctx.drawImage(temp_cnvs, 0, 0);
    });


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
})();