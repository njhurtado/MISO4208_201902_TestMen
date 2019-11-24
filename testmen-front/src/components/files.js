import React from 'react';

import { List,  Datagrid, TextField, 
    EditButton} from 'react-admin';
    const UrlFile = ({ record = {} }) => <a>{record.url}</a>;
export const FileList = props => (
    <List {...props}>
        <Datagrid >
            <TextField source="result_id" />
            <UrlFile />
        </Datagrid>
    </List>
);
