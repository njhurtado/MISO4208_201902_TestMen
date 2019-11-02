import React from 'react';

import { List,  Datagrid, TextField, 
    EditButton, ReferenceField} from 'react-admin';

export const ResultList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="execution_id" />
            <TextField source="run_date" />
            <TextField source="file_id" />            
        </Datagrid>
    </List>
);
