require('./config');
var express = require('express'),
    bodyParse = require('body-parser'),
    recastai = require('recastai').default;

var app = express();
app.use(bodyParse.json());
app.set('view engine', 'ejs');
app.set('views', './views');
app.use(express.static('public'));

app.listen(process.env.PORT,function () {
    console.log('Server is listening...');
});

var client = new recastai(process.env.REQUEST_TOKEN);
app.post('/',function (request,response) {
    client.connect.handleMessage(request, response, replyMessage);
});

app.get('/', function (req,res) {
    res.render('home');
});


var fTuVan=false, fCauHoi=false, fYoutube=false;

var replyMessage = function(message){

    const text = message.content;

    if(fTuVan)
        return TuVan_XuLy(message);
    if(fCauHoi)
        return CauHoi_XuLy(message);
    if(fYoutube)
        return Youtube_XuLy(message);

    if(text=='hướng nghiệp' && !fTuVan){
        fTuVan = true; fCauHoi = false; fYoutube = false;
        pointList=[]; sum=0; i=1;
    }
        if(text=='đố vui' && !fCauHoi){
        fCauHoi = true; fTuVan = false; fYoutube = false;
    }
    if(text == 'âm nhạc' && !fYoutube){
        fYoutube = true; fTuVan = false; fCauHoi = false;
    }
    return XuLy(message);
};



var pointList=[];
var sum=0;
var i=1;

function XuLy(message) {
    var build = new recastai.build(process.env.REQUEST_TOKEN, 'en');
    return build.dialog({ type: 'text', content:message.content }, { conversationId: message.conversationId })
        .then(function(res) {
            message.addReply(res.messages[0]);
            return message.reply().then(function(p) {p.body})
        });
}
function TuVan_XuLy(message) {
    var build = new recastai.build(process.env.REQUEST_TOKEN, 'en');
    const text = message.content;

    if(parseInt(text)===1 || parseInt(text)===2 || parseInt(text)===3 || parseInt(text)===4 || parseInt(text)===5){
        i++;
        sum += parseInt(text);
        if((i-1)%9===0){
            pointList.push({sum:sum,vl:'rs'+(i-1)/9});
            sum = 0;
        }
        if((i-1)/9===6){
            pointList.sort(compare);
            return build.dialog({ type: 'text', content:pointList[5].vl }, { conversationId: message.conversationId })
                .then(function(res) {
                    message.addReply(res.messages[0]);
                    message.addReply(res.messages[1]);
                    message.addReply(res.messages[2]);
                    return message.reply().then(function(p) {p.body});
                })
        }
    }else{
        message.addReply({type:'text',content:'Bạn vui lòng chọn mức độ từ 1 đến 5'})
    }
    return build.dialog({ type: 'text', content:i }, { conversationId: message.conversationId })
        .then(function(res) {
            message.addReply(res.messages[0]);
            return message.reply().then(function(p) {p.body});
        })
}

function compare(a,b) {
    if (a.sum < b.sum)
        return -1;
    if (a.sum > b.sum)
        return 1;
    return 0;
}


