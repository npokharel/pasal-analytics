//custom codes
function notify(message) {
    $(function(){
        new PNotify({
            title: 'Success !',
            text: message,
            type: 'success',
            styling: 'bootstrap3'
        });
    });
}