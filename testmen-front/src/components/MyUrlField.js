import React from 'react';
import { makeStyles,withStyles } from '@material-ui/core/styles';
import LaunchIcon from '@material-ui/icons/Launch';

const useStyles ={
    link: {
        textDecoration: 'none',
    },
    icon: {
        width: '0.5em',
        paddingLeft: 2,
    }};

const MyUrlField = withStyles(useStyles)(({ record = {}, source,classes}) => {
    //const classes = useStyles();
    console.log(record);
    console.log(source);
    console.log(record[source]);
    return (
        <a href={record[source]} className={classes.link} rel="noopener noreferrer" target="_blank">
            {record[source]}
            <LaunchIcon className={classes.icon} />
        </a>
    );
});

export default MyUrlField;