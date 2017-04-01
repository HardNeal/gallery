$(document).on('turbolinks:load', function() {
    $("#comments-link").on('click', function(event){
        event.preventDefault();
        $("#comment-section").fadeToggle();
        $("#comment_author").focus();
    });
});
