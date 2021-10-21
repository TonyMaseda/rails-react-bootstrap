import React from 'react'
import PropTypes from 'prop-types'

class TodoItems extends React.Component {
  constructor(props) {
    super(props)
    this.handleClick = this.handleClick.bind(this)
  }
  handleClick() {
    this.props.toggleCompletedTodoItems()
  }
  render() {
    return (
      <>
        <button
          className="btn btn-outline-secondary btn-block mb-1"
          onClick={this.handleClick}
        >
        {this.props.hideCompletedTodoItems
          ? `Show Completed Items`
          : `Hide Completed Items `}
        </button>
        <div className="table-responsive">
          <table className="table">
            <thead>
              <tr>
                <th scope="col" className="text-muted">Created</th>
                <th scope="col" className="text-muted">Finished</th>
                <th scope="col" className="text-muted">Description</th>
                <th scope="col" className="text-end text-muted">
                  Actions
                </th>
              </tr>
            </thead>
            <tbody>{this.props.children}</tbody>
          </table>
        </div>
      </>
    )
  }
}
export default TodoItems

TodoItems.propTypes = {
  toggleCompletedTodoItems: PropTypes.func.isRequired,
  hideCompletedTodoItems: PropTypes.bool.isRequired,
}
