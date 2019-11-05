import React from 'react';

import { List, Create, Edit, Datagrid, TextField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput, ReferenceInput, LongTextInput} from 'react-admin';
    

export const TestList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="type" />
            <TextField source="mode" />
            <TextField source="description" />
            <TextField source="aplication_id" />
            <TextField source="tool_id" />
            <TextField source="mutation" />
            <EditButton />
        </Datagrid>
    </List>
);

export const TestEdit = props => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
            <SelectInput source="type" choices={[
                                        {id: 'RANDOM', name: 'RANDOM'},
                                        {id: 'E2E', name: 'E2E'},
                                        {id: 'BDT', name: 'BDT'},
                                        {id: 'VRT', name: 'VRT'}
                                    ]}/>

            <SelectInput source="mode" choices={[
                                                {id: 'HEADLESS', name: 'HEADLESS'},
                                                {id: 'HEADFULL', name: 'HEADFULL'}
                                            ]}
                                            />
            <LongTextInput source="script" rowsMax={50} /> 


            <LongTextInput source="description" />
			<ReferenceInput source="version_id" reference="versions">
                <SelectInput optionText="version" />
            </ReferenceInput>
			<ReferenceInput source="tool_id" reference="tools">
                <SelectInput optionText="name" />
            </ReferenceInput>
             <SelectInput source="mutation"
                                 choices={[
                                     {id: 'N', name: 'NO'},
                                     {id: 'S', name: 'SI'},
                                 ]}
                                 />
        </SimpleForm>
    </Edit>
);


export const TestCreate = props => (
    <Create {...props}>
        <SimpleForm>
        <SelectInput source="type" choices={[
                                        {id: 'RANDOM', name: 'RANDOM'},
                                        {id: 'E2E', name: 'E2E'},
                                        {id: 'BDT', name: 'BDT'},
                                        {id: 'VRT', name: 'VRT'}
                                    ]}/>

            <SelectInput source="mode" choices={[
                                                {id: 'HEADLESS', name: 'HEADLESS'},
                                                {id: 'HEADFULL', name: 'HEADFULL'}
                                            ]}
                                            />
            <LongTextInput source="script" rowsMax={5}/>            
            <LongTextInput source="description" rowsMax={5}/>
			<ReferenceInput source="version_id" reference="versions">
                <SelectInput optionText="version" />
            </ReferenceInput>
			<ReferenceInput source="tool_id" reference="tools">
                <SelectInput optionText="name" />
            </ReferenceInput>
             <SelectInput source="mutation"
                                 choices={[
                                     {id: 'N', name: 'NO'},
                                     {id: 'S', name: 'SI'},
                                 ]}
                                 />
        </SimpleForm>
    </Create>
);