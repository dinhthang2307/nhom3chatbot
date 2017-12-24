import React from 'react'
import PropTypes from 'prop-types'

import './style.scss'

const Header = ({closeWebchat, preferences}) => (
    <div
        className="Header"
        style={{
            color: preferences.complementaryColor,
        }}
    >
        <img className="Header--logo" src={preferences.headerLogo}/>

        <div className="Header--title">{preferences.headerTitle}</div>

        <div className="Header--btn" onClick={closeWebchat}>
            <img src="https://cdn.pixabay.com/photo/2016/10/10/01/49/x-1727490_960_720.png"/>
        </div>
    </div>
)

Header.propTypes = {
    closeWebchat: PropTypes.func,
    preferences: PropTypes.object,
}

export default Header
