
require('./config')
var express = require('express'),
    bodyParse = require('body-parser'),
    recastai = require('recastai').default

var app = express()
app.use(bodyParse.json())

var list=[]
var id = 0;
app.listen(process.env.PORT,function () {
    console.log('Server is listening...')
})

app.post('/',function (request,response) {
    client.connect.handleMessage(request, response, replyMessage)
})
app.post('/')
var client = new recastai(process.env.REQUEST_TOKEN)
var pointList=[];
var sum=0;
var i=2;
function compare(a,b) {
    if (a.sum < b.sum)
        return -1;
    if (a.sum > b.sum)
        return 1;
    return 0;
}
var replyMessage = function(message){

    const text = message.content
    var build = new recastai.build(process.env.REQUEST_TOKEN, 'en')

    if(text==='start'){
        return build.dialog({ type: 'text', content:text }, { conversationId: message.conversationId })
            .then(function(res) {
                message.addReply(res.messages[0])
                return message.reply().then(function(p) {p.body})
            })
    }else{

        if(parseInt(text)!=1&&parseInt(text)!=2&&parseInt(text)!=3&&parseInt(text)!=4&&parseInt(text)!=5){
            i--
            message.addReply({type:'text',content:'Bạn vui lòng chọn mức độ từ 1 đến 5'})
        }else{
            sum+=parseInt(text);
            if(i%9===0){
                pointList.push({sum:sum,vl:'rs'+i/9})
                sum=0
            }
            if(i/9===6){
                pointList.sort(compare)
                return build.dialog({ type: 'text', content:pointList[5].vl }, { conversationId: message.conversationId })
                    .then(function(res) {
                        message.addReply(res.messages[0])
                        message.addReply(res.messages[1])
                        message.addReply(res.messages[2])
                        return message.reply().then(function(p) {p.body})
                    })
            }
        }

        return build.dialog({ type: 'text', content:i }, { conversationId: message.conversationId })
            .then(function(res) {
                i++;
                message.addReply(res.messages[0])
                return message.reply().then(function(p) {p.body})
            })
    }
}
