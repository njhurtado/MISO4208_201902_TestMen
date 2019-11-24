import React from 'react';

import { List, Create, Edit, Datagrid, TextField, EmailField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput,ReferenceInput} from 'react-admin';

    const redirect = (basePath, id, data) => `/results?filter={"_filter":"'execution_id':'${data.id}'"}&order=ASC&page=1&perPage=10&sort=execution_id`;
export const ExecutionList = props => (
    <List {...props}>
        <Datagrid rowClick={redirect}>
            <TextField source="id" />
            <TextField source="test_id" />
            <TextField source="result_id" />
            <TextField source="state" />
            <TextField source="test_type" />
            <TextField source="test_mode" />
            <TextField source="mutation" />
            <TextField source="mutation_value" />
            <TextField source="schedule" />
            <EditButton />
        </Datagrid>
    </List>
);

export const ExecutionEdit = props => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
           <ReferenceInput source="test_id" reference="tests">
                <SelectInput optionText="description" />
            </ReferenceInput>
            <SelectInput source="state"
                choices={[
                    {id: 'REGISTER', name: 'REGISTER'},
                    {id: 'EXECUTED', name: 'EXECUTED'},
                    {id: 'PENDING', name: 'PENDING'},
                ]}
                />
        </SimpleForm>
    </Edit>
);


export const ExecutionCreate = props => (
    <Create {...props}>
        <SimpleForm>
        <ReferenceInput source="test_id" reference="tests">
                <SelectInput optionText="description" />
            </ReferenceInput>
            <SelectInput source="state"
                choices={[
                    {id: 'REGISTER', name: 'REGISTER'},
                    {id: 'EXECUTED', name: 'EXECUTED'},
                    {id: 'PENDING', name: 'PENDING'},
                ]}
                />
        </SimpleForm>
    </Create>
);