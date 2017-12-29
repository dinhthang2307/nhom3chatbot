const recastai = require('recastai').default
const fun = require('./fun.js')
// Instantiate Recast.AI SDK
const client = new recastai(process.env.REQUEST_TOKEN)

var crypto = require('crypto'),
    format = require('biguint-format');
function randomC (qty) {
    var x= crypto.randomBytes(qty);
    return format(x, 'dec');
}
function random (low, high) {
    return randomC(4)/Math.pow(2,4*8-1) * (high - low) + low;
}
const replyMessage = message => {
  // Get text from message received
  const text = message.content
    console.log(message)

  return client.request.analyseText(text)
    .then(nlp => {
   //    let reply = 'I\'m sorry but I don\'t understand what you are talking about.'
   //     const intent = nlp.intent()
   //        console.log(intent.slug)
   // var id= Math.floor(Math.random() * (4 - 1 + 1) + 1);
   //  var obj={id:id,table:intent.slug}
   //
   //  fun.getData(obj).then(function (data) {
   //     reply=data.content
   //      console.log(reply)
   //      message.addReply({ type: 'quickReplies',
   //          content: {
   //              title: 'TITLE',
   //              buttons: [
   //                  {
   //                      title: 'BUTTON_TITLE',
   //                      value: '1'
   //                  }
   //              ],
   //              buttons: [
   //                  {
   //                      title: 'BUTTON_TITLE',
   //                      value: '2'
   //                  }
   //              ]
   //          } })
   //
   //      return message.reply().then(p => p.body)
   //  })
    //   if (intent.slug==='greetings') {
    //     reply = `chao`
    //   }
    // if (intent.slug==='goodbye'){
    //       reply = `bye`
    //   }
    // if (intent.slug==='abc'){
    //     reply='abc'
    // }
          console.log(nlp)
          message.addReply({ type: 'quickReplies',
          content: {
              title: 'TITLE',
              buttons: [{
                      title: '1',
                      value: '1'
                  },
                  {
                      title: '2',
                      value: '2'
                  },
                  {
                      title: '3',
                      value: '3'
                  },
                  {
                      title: '4',
                      value: '4'
                  },
                  {
                      title: '5',
                      value: '5'
                  }
              ]
          } })

    return message.reply().then(p => p.body)

    })
}

const reply = (request, response) => {
  return client.connect.handleMessage(request, response, replyMessage)
}

module.exports = {
  reply,
}
