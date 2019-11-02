import React from 'react';

import { List, Create, Edit, Datagrid, TextField, EmailField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput,ReferenceInput} from 'react-admin';

export const VersionList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="version" />
            <TextField source="aplication_id" />
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
           <TextInput source="version" />
           <ReferenceInput source="aplication_id" reference="applications">
                <SelectInput optionText="name" />
            </ReferenceInput>
        </SimpleForm>
    </Edit>
);


export const VersionCreate = props => (
    <Create {...props}>
        <SimpleForm>
             <TextInput source="name" />
             <TextInput source="version" />
           <ReferenceInput source="aplication_id" reference="applications">
                <SelectInput optionText="name" />
            </ReferenceInput>
        </SimpleForm>
    </Create>
);