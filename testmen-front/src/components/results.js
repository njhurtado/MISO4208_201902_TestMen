import React from 'react';

import { List,  Datagrid, TextField, 
    EditButton, ReferenceField} from 'react-admin';
    const UrlFile = ({ record = {} }) => <a>{record.url}</a>;

export const ResultList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="execution_id" />
            <TextField source="run_date" />   
            <ReferenceField label="Show File" source="file_id" reference="files">
             <UrlFile />
            </ReferenceField>      
        </Datagrid>
    </List>
);
