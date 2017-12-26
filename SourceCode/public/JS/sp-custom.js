// var img_link = 'https://suttoncoldfieldlocal.co.uk/wp-content/uploads/2015/05/Acorns-Dog-Walk-1-526x350.jpg';
// var video_title = 'Bùi Hà My Official ( Cover ) | ĐỪNG HỎI EM (DON\'T ASK ME) | MỸ TÂM ';
// var video_subtitle = 'Đừng Hỏi Em - Bùi Hà My (video cover)';
// var button_title = 'Xem ngay >>';
let prevNumMsgBot = 0;
// var currImageLink = '';
let currSubtitle = '';
// var isUpdated = false;

const HTTP_Request_Playlistitems = 'https://www.googleapis.com/youtube/v3/playlistItems';
const apiKey = 'AIzaSyByJLwurdg6oFd_66-Jf9BM4D36K8lfzSE';
const constants = {
    FUNNY: 'funny',
    SAD: 'sad',
    LOVE: 'love',
    STUDY: 'study'
};
const playListId = {
    // ds nhạc THEO CẢM XÚC
    nhacVui: 'PL28VQ9y-JTl5t5Cw_-9MaarKxy9uejlti',
    nhacHocTap: 'PL28VQ9y-JTl6sfi3H-0eh9YWeENBE71GN',
    nhacYeuDoi: 'PL28VQ9y-JTl6EvWuaqxtgMPjkrf7B8Yk5',
    nhacBuon: 'PL28VQ9y-JTl4TRizdkERj1YwlftD1yIRa',

    // ds nhạc THEO CA SĨ
    nhacSonTungMTP: 'PL28VQ9y-JTl7MnfpG92nMGGa5zAt-jTJj',
    nhacDucPhuc: 'PL28VQ9y-JTl5wqU2c39fdiwEFD0Mzda18',
    nhacBaoAnh: 'PL28VQ9y-JTl4CIYBqURH9iBWI7tEN6nho',

    // ds nhạc THEO THỂ LOẠI
    nhacQuocTe: 'PL28VQ9y-JTl6MysmSbSb8S3gFG9Bgjpx2',
    nhacRap: 'PL28VQ9y-JTl7FystyaGZa5zT1kcrKk-yN',
    nhacVeMe: 'PL28VQ9y-JTl76SRO3l9p2BTv8QA1iH5Ae',
    nhacTruTinh: 'PL28VQ9y-JTl7Hv6A7bxsPJBoumMEiHs6q'
};

let dsNhacVui = [];
let dsNhacHocTap = [];
let dsNhacYeuDoi = [];
let dsNhacBuon = [];
let dsNhacSonTung = [];
let dsNhacDucPhuc = [];
let dsNhacBaoAnh = [];
let dsNhacQuocTe = [];
let dsNhacRap = [];
let dsNhacVeMe = [];
let dsNhacTruTinh = [];



function getElementBotMgs(){
    var MessageBot = $("div#chatAmNhac div.Chat div.Live div.Live--message-container div.Message.bot").last();

    var Card = $(MessageBot).children("div.Card");

    var Card_img = $(Card).children("img.Card--img");

    var Card_Text = $(Card).children("div.Card--text");

    var Card_Text_Title = $(Card_Text).children("p.Card--text-title");

    var Card_Text_Subtitle = $(Card_Text).children("p.Card--text-subtitle");

    var Card_Container_Button = $(Card).children("div.Card--button-container");
    var Button = $(Card_Container_Button).children("div.Button");

    return {
        messageBot: MessageBot,
        card: Card,
        card_img: Card_img,
        card_text: Card_Text,
        card_text_title: Card_Text_Title,
        card_text_subtitle: Card_Text_Subtitle,
        card_container_button: Card_Container_Button,
        button: Button
    }
}

function getVideosId(playListId){
    return new Promise(function(resolve, reject){
        $.get(HTTP_Request_Playlistitems, {
            key: apiKey,
            playlistId: playListId,
            maxResults: 50,
            part: 'snippet,contentDetails'
        }).then(function(data){ // data nhận được từ kết quả GET trên
            var list = [];
            $.each(data.items, function(i, item){

                list.push({
                    imgLink: item.snippet.thumbnails.high.url,
                    videoTitle: item.snippet.title,
                    videoId: item.snippet.resourceId.videoId
                });
            });
            resolve(list);
        }).catch(function(err){
            reject(err);
        });
    });
}

function getCurrentList(dsNhac, playListId){
    return new Promise(function(resolve, reject){
        if(dsNhac.length > 0){ // dsNhac đã có dữ liệu
            return dsNhac;
        } else{ // dsNhac chưa có dữ liệu
            getVideosId(playListId)
                .then(function(videoIDs){
                    resolve(videoIDs);
                })
                .catch(function(error){
                    console.log(error.responseText);
                    reject(error);
                })
        }
    });
}

function loadData(){
    return new Promise(function(resolve, reject){
        getCurrentList(dsNhacVui, playListId.nhacVui).then(ds => {
            dsNhacVui = ds.slice();
            console.log(dsNhacVui);
        });
        getCurrentList(dsNhacBuon, playListId.nhacBuon).then(ds => {
            dsNhacBuon = ds.slice();
            console.log(dsNhacBuon);
        });
        getCurrentList(dsNhacYeuDoi, playListId.nhacYeuDoi).then(ds => {
            dsNhacYeuDoi = ds.slice();
            console.log(dsNhacYeuDoi);
        });
        getCurrentList(dsNhacHocTap, playListId.nhacHocTap).then(ds => {
            dsNhacHocTap = ds.slice();
            console.log(dsNhacHocTap);
        });
        getCurrentList(dsNhacSonTung, playListId.nhacSonTungMTP).then(ds => {
            dsNhacSonTung = ds.slice();
            console.log(dsNhacSonTung);
        });
        getCurrentList(dsNhacDucPhuc, playListId.nhacDucPhuc).then(ds => {
            dsNhacDucPhuc = ds.slice();
            console.log(dsNhacDucPhuc);
        });
        getCurrentList(dsNhacBaoAnh, playListId.nhacBaoAnh).then(ds => {
            dsNhacBaoAnh = ds.slice();
            console.log(dsNhacBaoAnh);
        });
        getCurrentList(dsNhacQuocTe, playListId.nhacQuocTe).then(ds => {
            dsNhacQuocTe = ds.slice();
            console.log(dsNhacQuocTe);
        });
        getCurrentList(dsNhacRap, playListId.nhacRap).then(ds => {
            dsNhacRap = ds.slice();
            console.log(dsNhacRap);
        });
        getCurrentList(dsNhacVeMe, playListId.nhacVeMe).then(ds => {
            dsNhacVeMe = ds.slice();
            console.log(dsNhacVeMe);
        });
        getCurrentList(dsNhacTruTinh, playListId.nhacTruTinh).then(ds => {
            dsNhacTruTinh = ds.slice();
            console.log(dsNhacTruTinh);
        });
    });
}



function CreateYoutubeLink(videoId){
    return 'https://www.youtube.com/embed/' + videoId + '?autoplay=1';
}

// function CustomMsgVideo(obj){
//     // var randNum = Math.floor((Math.random() * dsNhacBuon.length));
//     // card.css('background-color', '#ffe854');
//     // img.attr("src",dsNhacBuon[randNum].imgLink);
//     // img.attr("data-video-id",dsNhacBuon[randNum].videoId);
//     // img.attr("onClick",'PlayVideo(this)');
//     // title.text(dsNhacBuon[randNum].videoTitle);
//     // currSubtitle = 'Buồn CC';
//     // button.addClass('btn-watch').removeClass('Button');
//     //
//     // containButton.html('');
//
//     {
//         dsNhac: ,
//         customCard: {
//             cardSelecter: ,
//             backgroundColor:
//         },
//         customImage: {
//             imgSelecter: ,
//             imgLink: , string
//             videoId: string
//         },
//         customTitle: {
//             titleSelecter: ,
//             title: string
//         },
//         customButton: {
//             buttonSelecter:
//         }
//     }
//
//     var randNum = Math.floor((Math.random() * dsNhac.length));
//     cardSelector.css('background-color', '#ffe854');
//     imgSelecter.attr("src",imgLink);
//     imgSelecter.attr("data-video-id",videoId);
//     imgSelecter.attr("onClick",'PlayVideo(this)');
//     titleSelecter.text(title);
//     buttonSelecter.addClass('btn-watch').removeClass('Button');
// }


function checkRealTimeTitle(){
    var numCurrent = $('div.Chat div.Live div.Live--message-container div.Message.bot').length;

    var msgBot = getElementBotMgs();
    var img = msgBot.card_img;
    var title = msgBot.card_text_title;
    var subTitle = msgBot.card_text_subtitle;
    var button = msgBot.button;
    var containButton = msgBot.card_container_button;
    var card = msgBot.card;

    console.log('_timer');

    if(prevNumMsgBot < numCurrent && title.text() !== ''){

        prevNumMsgBot = numCurrent;

        if(title.text() === '_BUON')
        {

            var randNum = Math.floor((Math.random() * dsNhacBuon.length));
            card.css('background-color', '#ffe854');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacBuon[randNum].imgLink);
            img.attr("data-video-id",dsNhacBuon[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacBuon[randNum].videoTitle);
            currSubtitle = 'Buồn CC';
            button.addClass('btn-watch').removeClass('Button');

            containButton.html('');

        } else if(title.text() === '_VUI')
        {

            var randNum = Math.floor((Math.random() * dsNhacVui.length));
            card.css('background-color', '#90ff54');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacVui[randNum].imgLink);
            img.attr("data-video-id",dsNhacVui[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacVui[randNum].videoTitle);
            currSubtitle = 'Vui đi, buồn làm chi';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');

        } else if(title.text() === '_HOC_TAP')
        {

            var randNum = Math.floor((Math.random() * dsNhacHocTap.length));
            card.css('background-color', '#91e7ff');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacHocTap[randNum].imgLink);
            img.attr("data-video-id",dsNhacHocTap[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacHocTap[randNum].videoTitle);
            currSubtitle = 'Học tập thì phải nghe bài này';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');

        } else if(title.text() === '_YEU')
        {


            var randNum = Math.floor((Math.random() * dsNhacYeuDoi.length));
            card.css('background-color', '#ff919c');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacYeuDoi[randNum].imgLink);
            img.attr("data-video-id",dsNhacYeuDoi[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacYeuDoi[randNum].videoTitle);
            currSubtitle = 'Yêu là sẽ bên nhau trọn đời';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');

        } else if(title.text() === '_SON_TUNG_MTP'){

            var randNum = Math.floor((Math.random() * dsNhacSonTung.length));
            card.css('background-color', '#d1ff91');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacSonTung[randNum].imgLink);
            img.attr("data-video-id",dsNhacSonTung[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacSonTung[randNum].videoTitle);
            currSubtitle = 'Sky ơi... cố lên nào...';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');


        } else if(title.text() === '_DUC_PHUC'){


            var randNum = Math.floor((Math.random() * dsNhacDucPhuc.length));
            card.css('background-color', 'snow');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacDucPhuc[randNum].imgLink);
            img.attr("data-video-id",dsNhacDucPhuc[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacDucPhuc[randNum].videoTitle);
            currSubtitle = 'Đức Phúc... Soái ca giọng Việt';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');

        } else if(title.text() === '_BAO_ANH'){

            var randNum = Math.floor((Math.random() * dsNhacBaoAnh.length));
            card.css('background-color', '#ffff91');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacBaoAnh[randNum].imgLink);
            img.attr("data-video-id",dsNhacBaoAnh[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacBaoAnh[randNum].videoTitle);
            currSubtitle = 'Thiên thần nhạc buồn (-_-)';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');

        } else if(title.text() === '_QUOC_TE'){

            var randNum = Math.floor((Math.random() * dsNhacQuocTe.length));
            card.css('background-color', '#91beff');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacQuocTe[randNum].imgLink);
            img.attr("data-video-id",dsNhacQuocTe[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacQuocTe[randNum].videoTitle);
            currSubtitle = 'Đây là nhạc quốc tế';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');

        } else if(title.text() === '_RAP'){

            var randNum = Math.floor((Math.random() * dsNhacRap.length));
            card.css('background-color', '#b7b7b7');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacRap[randNum].imgLink);
            img.attr("data-video-id",dsNhacRap[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacRap[randNum].videoTitle);
            currSubtitle = 'Rap... bumm buum ...';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');

        } else if(title.text() === '_VE_ME'){

            var randNum = Math.floor((Math.random() * dsNhacVeMe.length));
            card.css('background-color', '#ffcf4e');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacVeMe[randNum].imgLink);
            img.attr("data-video-id",dsNhacVeMe[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacVeMe[randNum].videoTitle);
            currSubtitle = 'Nghĩa mẹ như nước trong nguồn chảy ra...';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');


        } else if(title.text() === '_TRU_TINH'){

            var randNum = Math.floor((Math.random() * dsNhacTruTinh.length));
            card.css('background-color', '#ed66ff');
            img.css('width', '270');
            img.css('height', '150');
            img.css('cursor', 'pointer');
            img.attr("src",dsNhacTruTinh[randNum].imgLink);
            img.attr("data-video-id",dsNhacTruTinh[randNum].videoId);
            img.attr("onClick",'PlayVideo(this)');
            title.text(dsNhacTruTinh[randNum].videoTitle);
            currSubtitle = 'Bài hát bolero trữ tình nhất là đây.';
            button.addClass('btn-watch').removeClass('Button');
            containButton.html('');

        }

        console.log('Kiểm tra số lượng msgBot [xong]');
    }

    // subTitle.text(currSubtitle);
}

function PlayVideo(papa){
    var videoId = $(papa).data('video-id');
    var youtubeLink = CreateYoutubeLink(videoId);

    $(papa).replaceWith($('<div class="bg-yt-video"><iframe src="'+youtubeLink+'" class="Card--img" allowfullscreen></iframe></div>'));
    $(".bg-yt-video").css('background-color', 'black');
}

///////////////////MAIN-function///////////////////////
setInterval(checkRealTimeTitle, 1);
loadData();
