//custom codes
function notify(message) {
    $(function () {
        new PNotify({
            title: 'Success !',
            text: message,
            type: 'success',
            styling: 'bootstrap3'
        });
    });
}

function notifydel(error) {
    $(function () {
        new PNotify({
            title: 'Deleted !',
            text: error,
            type: 'error',
            styling: 'bootstrap3'
        });
    });
}

function myFullScreen() {
   var elem = document.getElementById("fullPageID");
    if (
        document.fullscreenElement ||
        document.webkitFullscreenElement ||
        document.mozFullScreenElement ||
        document.msFullscreenElement
    ) {
        if (document.exitFullscreen) {
            document.exitFullscreen();
        } else if (document.webkitExitFullscreen) {
            document.webkitExitFullscreen();
        } else if (document.mozCancelFullScreen) {
            document.mozCancelFullScreen();
        } else if (document.msExitFullscreen) {
            document.msExitFullscreen();
        }
        $("#fullScreenIcon").addClass("glyphicon-resize-full");
        $("#fullScreenIcon").removeClass("glyphicon-resize-small");
    }

    else {
        if (elem.requestFullscreen) {
            elem.requestFullscreen();
        }
        else if (elem.mozRequestFullScreen) {
            elem.mozRequestFullScreen();
        }
        else if (elem.webkitRequestFullscreen) {
            elem.webkitRequestFullscreen();
        }
        else if (elem.msRequestFullscreen) {
            elem.msRequestFullscreen();
        }
        $("#fullScreenIcon").addClass("glyphicon-resize-small");
        $("#fullScreenIcon").removeClass("glyphicon-resize-full");
    }

}

function myLockFunction() {
    if($("#lockArea").is(".lockClass")){
        $("#lockArea").removeClass("lockClass");

        $("#lockIcon").addClass("glyphicon-eye-close");
        $("#lockIcon").removeClass("glyphicon-eye-open");
    }
    else{
        $("#lockArea").addClass("lockClass");

        $("#lockIcon").addClass("glyphicon-eye-open");
        $("#lockIcon").removeClass("glyphicon-eye-close");
    }
}