import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { connect } from 'react-redux'

import Chat from 'containers/Chat'
import { setCredentials, createConversation } from 'actions/conversation'
import { storeCredentialsInCookie, getCredentialsFromCookie } from 'helpers'

import './style.scss'

@connect(null, {
  setCredentials,
  createConversation,
})
class App extends Component {

  componentDidMount() {
    const { channelId, token, preferences } = this.props;
    const credentials = getCredentialsFromCookie();
    const payload = { channelId, token };

    if (credentials) {
      Object.assign(payload, credentials)
    } else {
      this.props
        .createConversation(channelId, token)
        .then(({ id, chatId }) =>
          storeCredentialsInCookie(chatId, id, preferences.conversationTimeToLive),
        )
    }

    this.props.setCredentials(payload)
  }

  toggleChat = () => {
      location.reload();
  }

  render() {
    const { preferences } = this.props;

    return (
      <div className="RecastApp">

      <Chat closeWebchat={this.toggleChat} preferences={preferences} />

      </div>
    )
  }
}

App.propTypes = {
  token: PropTypes.string.isRequired,
  channelId: PropTypes.string.isRequired,
  preferences: PropTypes.object.isRequired,
}

export default App
