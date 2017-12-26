/**
 * Created by USER on 12/24/2017.
 */
var interval_obj = setInterval(function(){
    $('.dovui div.Header div.Header--title').text('Câu hỏi đố vui');
    $(".dovui div.Header img.Header--logo").attr("src","/Images/image/logo_dovui.png");
    $(".dovui div.Chat").css("border-color", "#ed057a");
    $(".dovui div.Live").css("background-image", 'url(/Images/image/bgchat_dovui.jpg)');
    $(".dovui button.Input--send").css("background-color", '#ad5b78bd');
    $(".dovui button.Input--send").css("border-color", '#c77491');



    $('.amnhac div.Header div.Header--title').text('Âm nhạc');
    $(".amnhac div.Header img.Header--logo").attr("src","/Images/image/logo_amnhac.png");
    $(".amnhac div.Chat").css("border-color", "#784e1d");
    $(".amnhac div.Live").css("background-image", 'url(/Images/image/bgchat_amnhac.jpg)');
    $(".amnhac button.Input--send").css("background-color", '#d58512');
    $(".amnhac button.Input--send").css("border-color", '#985f0d');
}, 1);

setInterval(function(){
    $(".dovui div.Text").css("background-color", 'rgb(255,7,170)');
    $(".dovui div.QuickReplies div.Text").css("background-color", 'rgb(127,252,129)');
    $(".dovui div.QuickReplies--button").css("background-color", '#fc8fe1');
    $(".dovui div.QuickReplies--button").css("border-color", '#ff0068');
    $(".dovui div.bot div.Text").css("background-color", 'rgb(127,252,129)');
}, 1);

$('#huongnghiep').on("click", function () {
    $("#recast-webchat-div").appendTo(".huongnghiep");
    $(".Message.bot.text_huongnghiep").appendTo(".Live--message-container");

});
$('#dovui').on("click", function () {
    $("#recast-webchat-div").appendTo(".dovui");
    $(".Message.bot.text_dovui").appendTo(".Live--message-container");

    setTimeout(function(){
        clearInterval(interval_obj);
    }, 10);

});
$('#amnhac').on("click", function () {
    $("#recast-webchat-div").appendTo(".amnhac");
    $(".Message.bot.text_amnhac").appendTo(".Live--message-container");
    setTimeout(function(){
        clearInterval(interval_obj);
    }, 10);
});

$(function(){
    $('.normal').autosize();
    $('.animated').autosize({append: "\n"});
});