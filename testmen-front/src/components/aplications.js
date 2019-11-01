import React from 'react';

import { List, Create, Edit, Datagrid, TextField, EmailField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput} from 'react-admin';

export const AplicationList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="name" />
            <TextField source="type" />
            <EditButton />
        </Datagrid>
    </List>
);

export const AplicationEdit = props => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
           <TextInput source="name" />
           <SelectInput source="type"
                                 choices={[
                                     {id: 'WEB', name: 'WEB'},
                                     {id: 'MOVIL', name: 'MOVIL'},
                                 ]}
                                 />
        </SimpleForm>
    </Edit>
);


export const AplicationCreate = props => (
    <Create {...props}>
        <SimpleForm>
             <TextInput source="name" />
             <SelectInput source="type"
                                 choices={[
                                     {id: 'WEB', name: 'WEB'},
                                     {id: 'MOVIL', name: 'MOVIL'},
                                 ]}
                                 />
        </SimpleForm>
    </Create>
);