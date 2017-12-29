import React, {Component} from 'react'
import PropTypes from 'prop-types'

import './style.scss'

class Input extends Component {
    state = {
        value: '',
    }

    componentDidMount() {
        this._input.focus()
    }

    sendMessage = e => {
        if(e.keyCode === 13 && e.shiftKey === false)
        {
            const content = this.state.value.trim()
            e.preventDefault()
            if (content) {
                this.props.onSubmit({type: 'text', content})
                this.setState({value: ''})
            }
        }

    }
    handleSubmit = (e) =>
    {
        const content = this.state.value.trim()
        e.preventDefault()
        if (content) {
            this.props.onSubmit({type: 'text', content})
            this.setState({value: ''})
        }
    }


    render() {
        const {value} = this.state

        return (
            <div className="Input">
                <form onKeyUp={this.sendMessage}
                        onSubmit={this.handleSubmit}
                        style={{display: 'flex'}}>
                    <input
                        ref={i => (this._input = i)}
                        placeholder={"Write a reply..."}
                        type="hidden"
                        value={value}

                        onChange={e => this.setState({value: e.target.value})}
                    />
                    <textarea className="form-control animated Input--input"
                              placeholder={"Write a reply..."}
                              value={value}
                              onChange={e => this.setState({value: e.target.value})}/>

                    <div className="sendchat">
                        <button type="submit" className="btn btn-success Input--send">
                            <img width="30px" height="37px" src="../public/Images/image/send-icon.png"/>
                        </button>
                    </div>
                </form>
            </div>
        )
    }
}

Input.propTypes = {
    onSubmit: PropTypes.func,
}

export default Input
