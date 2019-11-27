import React from 'react';

import { List, Create, Edit, Datagrid, TextField, 
    SimpleForm,DisabledInput,TextInput      
    } from 'react-admin';
    const UrlFile = ({ record = {} }) => <a>{record.url}</a>;
export const FileList = props => (
    <List {...props}>
        <Datagrid >
            <TextField source="result_id" />
            <UrlFile />
        </Datagrid>
    </List>
);

export const FileEdit = props => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
           <TextInput source="url" />
        </SimpleForm>
    </Edit>
);


export const FileCreate = props => (
    <Create {...props}>
        <SimpleForm>
           <TextInput source="url" />
        </SimpleForm>
    </Create>
);
