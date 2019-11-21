// in src/comments/MatrixApproveButton.js
import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import Button from '@material-ui/core/Button';
import { showNotification } from 'react-admin';
import { push } from 'react-router-redux';

class MatrixApproveButton extends Component {
    handleClick = () => {
        const { push, record, showNotification } = this.props;
        const updatedRecord = { ...record};
        console.log(this.props);
        fetch(`/testmatrix`, { method: 'POST', body: updatedRecord })
            .then(() => {


                showNotification('testmatrix approved');
                push('/testmatrix');
            })
            .catch((e) => {
                showNotification('Error: comment not approved', 'warning')
            });
    }

    render() {
        return <Button label="SAVE" onClick={this.handleClick}>SAVE MATRIX</Button>;
    }
}

MatrixApproveButton.propTypes = {
    push: PropTypes.func,
    record: PropTypes.object,
    showNotification: PropTypes.func,
};

export default connect(null, {
    showNotification,
    push,
})(MatrixApproveButton);