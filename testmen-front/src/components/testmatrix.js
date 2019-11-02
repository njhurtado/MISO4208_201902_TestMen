import React from 'react';

import { List, Create, Edit, Datagrid, TextField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput, ReferenceInput, LongTextInput} from 'react-admin';

export const TestMatrixList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            <TextField source="id" />
            <TextField source="test_type" />
            <TextField source="test_mode" />
            <TextField source="aplication_id" />
            <TextField source="app_type" />
            <TextField source="version_id" />
            <TextField source="tool_id" />
            <TextField source="mutation" />
            <TextField source="tool_size" />
            <TextField source="tool_version" />
            <EditButton />
        </Datagrid>
    </List>
);

export const TestMatrixEdit = props => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
            <SelectInput source="test_type" choices={[
                                        {id: 'RANDOM', name: 'RANDOM'},
                                        {id: 'E2E', name: 'E2E'},
                                        {id: 'BDT', name: 'BDT'},
                                        {id: 'VRT', name: 'VRT'}
                                    ]}/>

            <SelectInput source="test_mode" choices={[
                                                {id: 'HEADLESS', name: 'HEADLESS'},
                                                {id: 'HEADFULL', name: 'HEADFULL'}
                                            ]}
                                            />
            <SelectInput source="aplication_id" choices={[
                                                {id: 'Dollibar', name: 'Dollibar'},
                                                {id: 'Car Report', name: 'Car Report'},
                                                {id: 'GNU Cash', name: 'GNU Cash'}
                                            ]}
                                            />
            <SelectInput source="app_type"
                                 choices={[
                                     {id: 'WEB', name: 'WEB'},
                                     {id: 'MOVIL', name: 'MOVIL'},
                                 ]}
                                 />
            {/*<SelectInput source="version_id" choices={[
                                                {id: '10.1', name: '10.1'},
                                                {id: '3.25', name: '3.25'},
                                                {id: '2.6.21', name: '2.6.21'}
                                            ]}
                                            />*/}
            <ReferenceInput source="version_id" reference="versions">
                <SelectInput optionText="version" />
            </ReferenceInput>

            {/*<SelectInput source="tool_id" choices={[
                                                {id: 'Nexus 5 API 26', name: 'Nexus 5 API 26'},
                                                {id: 'Pixel 5.0 API 29', name: 'Pixel 5.0 API 29'},
                                                {id: 'Firefox', name: 'Firefox'},
                                                {id: 'Google Chrome', name: 'Google Chrome'}
                                            ]}
                                            />*/}
            <ReferenceInput source="tool_id" reference="tools">
                <SelectInput optionText="name" />
            </ReferenceInput>

            <SelectInput source="mutation"
                                 choices={[
                                     {id: 'N', name: 'NO'},
                                     {id: 'S', name: 'SI'}
                                 ]}
                                 />
            <SelectInput source="tool_size"
                                 choices={[
                                     {id: '4.95', name: '4.95'},
                                     {id: '6', name: '6'}
                                 ]}
                                 />
            <SelectInput source="tool_version"
                                 choices={[
                                     {id: 'Android 8.0', name: 'Android 8.0'},
                                     {id: '69.0.1', name: '69.0.1'},
                                     {id: '77', name: '77'},
                                     {id: '57.0.4', name: '57.0.4'},
                                     {id: '55.0.2883.91', name: '55.0.2883.91'}
                                 ]}
                                 />            			
            
        </SimpleForm>
    </Edit>
);


export const TestMatrixCreate = props => (
    <Create {...props}>
        <SimpleForm>
            <SelectInput source="test_type" choices={[
                        {id: 'RANDOM', name: 'RANDOM'},
                        {id: 'E2E', name: 'E2E'},
                        {id: 'BDT', name: 'BDT'},
                        {id: 'VRT', name: 'VRT'}
                    ]}/>

            <SelectInput source="test_mode" choices={[
                                {id: 'HEADLESS', name: 'HEADLESS'},
                                {id: 'HEADFULL', name: 'HEADFULL'}
                            ]}
                            />

<ReferenceInput source="aplication_id" reference="applications">
            <SelectInput optionText="name" />
            </ReferenceInput>

            <SelectInput source="app_type"
                choices={[
                    {id: 'WEB', name: 'WEB'},
                    {id: 'MOVIL', name: 'MOVIL'},
                ]}
                />
            {/*<SelectInput source="version_id" choices={[
                                {id: '10.1', name: '10.1'},
                                {id: '3.25', name: '3.25'},
                                {id: '2.6.21', name: '2.6.21'}
                            ]}
                            />*/}
            <ReferenceInput source="version_id" reference="versions">
            <SelectInput optionText="version" />
            </ReferenceInput>

            {/*<SelectInput source="tool_id" choices={[
                                {id: 'Nexus 5 API 26', name: 'Nexus 5 API 26'},
                                {id: 'Pixel 5.0 API 29', name: 'Pixel 5.0 API 29'},
                                {id: 'Firefox', name: 'Firefox'},
                                {id: 'Google Chrome', name: 'Google Chrome'}
                            ]}
                            />*/}
            <ReferenceInput source="tool_id" reference="tools">
            <SelectInput optionText="name" />
            </ReferenceInput>

            <SelectInput source="mutation"
                choices={[
                    {id: 'N', name: 'NO'},
                    {id: 'S', name: 'SI'}
                ]}
                />
            <SelectInput source="tool_size"
                choices={[
                    {id: '4.95', name: '4.95'},
                    {id: '6', name: '6'}
                ]}
                />
            <SelectInput source="tool_version"
                choices={[
                    {id: 'Android 8.0', name: 'Android 8.0'},
                    {id: '69.0.1', name: '69.0.1'},
                    {id: '77', name: '77'},
                    {id: '57.0.4', name: '57.0.4'},
                    {id: '55.0.2883.91', name: '55.0.2883.91'}
                ]}
                />            			

        </SimpleForm>
    </Create>
);