import React from 'react';

import { List, Create, Edit, Datagrid, TextField, 
    EditButton,SimpleForm,DisabledInput,ReferenceField,
    SelectInput, ReferenceInput, LongTextInput} from 'react-admin';
import withStyles from '@material-ui/core/styles/withStyles';

export const styles = {
        block: { display: 'block' },
        inline_block: { display: 'inline-block' },
        inline_block_marlf: { display: 'inline-block', marginLeft: 32 },
    };  

export function objToString(obj) {
        var str = '';
        for (var p in obj) {
            if (obj.hasOwnProperty(p) && p !== 'preventDefault') {
                str += obj[p];
            }
        }
        return str;
    }
    
export function handleOnchangeVersion(event) {
        var value = objToString(event)
        /*this.setState((state, props) => {
            return { has_mutation:'S'===value};
        })*/

        console.log(value);
    }
    const FullNameApp = ({ record = {} }) => <span>{record.app.name} {record.version}</span>;
export const TestList = props => (
    <List {...props}>
        <Datagrid rowClick="edit">
            {/*<TextField source="id" />*/}
            <TextField source="type" />
            <TextField source="mode" />
            <TextField source="description" />
            <ReferenceField label="App Version" source="version_id" reference="versions">
             <FullNameApp source="app.name" />
            </ReferenceField>
            <EditButton />
        </Datagrid>
    </List>
);
const optionRendererTools = choice => `${choice.name} ${choice.version}`;
export const TestEdit = withStyles(styles)(({ classes, ...props })=> (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
           <SelectInput source="type" choices={[
                                        {id: 'RANDOM', name: 'RANDOM'},
                                        {id: 'E2E', name: 'E2E'},
                                        {id: 'BDT', name: 'BDT'}
                                    ]}
                                    formClassName={classes.inline_block}/>

            <SelectInput source="mode" choices={[
                                                {id: 'HEADLESS', name: 'HEADLESS'},
                                                {id: 'HEADFULL', name: 'HEADFULL'},
                                                {id: 'VRT', name: 'VRT'}
                                            ]}
                                            formClassName={classes.inline_block_marlf}
                                            />
          
           
			<ReferenceInput source="version_id" reference="versions" formClassName={classes.inline_block_marlf}
            onChange={event=>handleOnchangeVersion(event)} 
            >
                <SelectInput optionText={choice => `${choice.app.name} ${choice.version}`} />
            </ReferenceInput>
            <LongTextInput source="description" rowsMax={5}/>
            <LongTextInput source="script" rowsMax={5}/>    
        </SimpleForm>
    </Edit>
));


export const TestCreate = withStyles(styles)(({ classes, ...props }) => (
    <Create {...props}>
        <SimpleForm>
        <SelectInput source="type" choices={[
                                        {id: 'RANDOM', name: 'RANDOM'},
                                        {id: 'E2E', name: 'E2E'},
                                        {id: 'BDT', name: 'BDT'}
                                    ]}
                                    formClassName={classes.inline_block}/>

            <SelectInput source="mode" choices={[
                                                {id: 'HEADLESS', name: 'HEADLESS'},
                                                {id: 'HEADFULL', name: 'HEADFULL'},
                                                {id: 'VRT', name: 'VRT'}
                                            ]}
                                            formClassName={classes.inline_block_marlf}
                                            />
          
           
			<ReferenceInput source="version_id" reference="versions" formClassName={classes.inline_block_marlf}
            onChange={event=>handleOnchangeVersion(event)} 
            >
                <SelectInput optionText={choice => `${choice.app.name} ${choice.version}`} />
            </ReferenceInput>
            <LongTextInput source="description" rowsMax={5}/>
            <LongTextInput source="script" rowsMax={5}/>            
        </SimpleForm>
    </Create>
));