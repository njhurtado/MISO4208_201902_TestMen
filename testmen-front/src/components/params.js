import React from 'react';

import { List, Create, Edit, Datagrid, TextField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput, ReferenceInput, LongTextInput} from 'react-admin';

export const ParamList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="param" />
            <TextField source="value" />
            <TextField source="test_id" />
            <EditButton />
        </Datagrid>
    </List>
);

export const ParamEdit = props => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
           <TextInput source="param" />
           <LongTextInput source="value" />
           <ReferenceInput source="test_id" reference="tests">
                <SelectInput optionText="description" />
            </ReferenceInput>
        </SimpleForm>
    </Edit>
);


export const ParamCreate = props => (
    <Create {...props}>
        <SimpleForm>
        <TextInput source="param" />
           <LongTextInput source="value" />
           <TextInput source="test_id" />
        </SimpleForm>
    </Create>
);