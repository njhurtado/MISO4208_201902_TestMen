import React from 'react';

import { List,  Datagrid, TextField, 
    UrlField, ReferenceField} from 'react-admin';

    const useStyles ={
        link: {
            textDecoration: 'none',
        },
        icon: {
            width: '0.5em',
            paddingLeft: 2,
        }}; 
export const ResultList = props => (
    <List {...props}>
        <Datagrid >
            <TextField source="id" />
            <TextField source="execution_id" />
            <TextField source="run_date" /> 
            <UrlField source="file.url" rel="noopener noreferrer" target="_blank" style={useStyles}/>
        </Datagrid>
    </List>
);
