import React from 'react';

import { List, Create, Edit, Datagrid, TextField, EmailField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput,ReferenceInput} from 'react-admin';
const FullNameApp = ({ record = {} }) => <span>{record.app.name} {record.version}</span>;
export const VersionList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
        <TextField source="app.name" />
        <TextField source="version" />
        <TextField source="url_repo" />
         <TextField source="url_app" />
         <EditButton />
        </Datagrid>
    </List>
);

export const VersionEdit = props => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />          
           <ReferenceInput source="aplication_id" reference="applications">
                <SelectInput optionText="name" />
            </ReferenceInput>
            <TextInput source="version" />
            <TextInput source="url_repo" />
            <TextInput source="url_app" />
        </SimpleForm>
    </Edit>
);


export const VersionCreate = props => (
    <Create {...props}>
        <SimpleForm>          
           <ReferenceInput source="aplication_id" reference="applications">
                <SelectInput optionText="name" />
            </ReferenceInput>
            <TextInput source="version" />
            <TextInput source="url_repo" />
            <TextInput source="url_app" />
        </SimpleForm>
    </Create>
);