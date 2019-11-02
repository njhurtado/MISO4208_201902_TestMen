import React from 'react';

import { List, Create, Edit, Datagrid, TextField, EmailField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput} from 'react-admin';

export const ToolList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="name" />
            <TextField source="version" />
            <EditButton />
        </Datagrid>
    </List>
);

export const ToolEdit = props => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
           <TextInput source="name" />
           <TextInput source="version" />
        </SimpleForm>
    </Edit>
);


export const ToolCreate = props => (
    <Create {...props}>
        <SimpleForm>
             <TextInput source="name" />
             <TextInput source="version" />
        </SimpleForm>
    </Create>
);