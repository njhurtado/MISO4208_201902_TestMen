import React from 'react';

import { List,  Datagrid, TextField, 
    EditButton} from 'react-admin';

export const FileList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="result_id" />
            <TextField source="url" />
        </Datagrid>
    </List>
);
