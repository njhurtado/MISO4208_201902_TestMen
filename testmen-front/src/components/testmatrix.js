import React from 'react';

import { List, Create, Edit, Datagrid, TextField, 
    EditButton,SimpleForm,DisabledInput,TextInput,
    SelectInput, ReferenceInput, LongTextInput,
    ReferenceArrayInput, SelectArrayInput ,FormDataConsumer} from 'react-admin';
import withStyles from '@material-ui/core/styles/withStyles';
import Divider from '@material-ui/core/Divider';


const form={
    isShowApplication:false

}


export const styles = {
    block: { display: 'block' },
    inline_block: { display: 'inline-block' },
    inline_block_marlf: { display: 'inline-block', marginLeft: 32 },
    divider: { width: '100%',marginTop: 2, height:0},
    address: { maxWidth: 544 },
    zipcode: { display: 'inline-block' },
    city: { display: 'inline-block', marginLeft: 32 },
    comment: {
        maxWidth: '20em',
        overflow: 'hidden',
        textOverflow: 'ellipsis',
        whiteSpace: 'nowrap',
    },
};

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

export const TestMatrixEdit =withStyles(styles)( ({ classes, ...props }) => (
    <Edit {...props}>
        <SimpleForm>
           <DisabledInput source="id" />
            <SelectInput source="test_type" choices={[
                                        {id: 'RANDOM', name: 'RANDOM'},
                                        {id: 'E2E', name: 'E2E'},
                                        {id: 'BDT', name: 'BDT'},
                                        {id: 'VRT', name: 'VRT'} 
                                    ]} 
                                    formClassName={classes.inline_block }/>

            <SelectInput source="test_mode" choices={[
                                                {id: 'HEADLESS', name: 'HEADLESS'},
                                                {id: 'HEADFULL', name: 'HEADFULL'}
                                            ]}
                                            formClassName={classes.inline_block }
                                            />
             <SelectInput source="app_type"
                                 choices={[
                                     {id: 'WEB', name: 'WEB'},
                                     {id: 'MOVIL', name: 'MOVIL'},
                                 ]}
                                 formClassName={classes.inline_block }/>
            

<ReferenceInput source="aplication_id" reference="applications">
            <SelectInput optionText="name" />
            </ReferenceInput>
           
                <ReferenceInput source="version_id" reference="versions">
                    <SelectInput optionText="version" />
                </ReferenceInput>
           
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
));


export const TestMatrixCreate = withStyles(styles)(({ classes, ...props }) => (

    
    <Create {...props} >
      
        <SimpleForm >
            <SelectInput source="test_type" choices={[
                        {id: 'RANDOM', name: 'RANDOM'},
                        {id: 'E2E', name: 'E2E'},
                        {id: 'BDT', name: 'BDT'},
                        {id: 'VRT', name: 'VRT'}
                    ]}
                    formClassName={classes.inline_block }
                    />

            <SelectInput source="test_mode" choices={[
                                {id: 'HEADLESS', name: 'HEADLESS'},
                                {id: 'HEADFULL', name: 'HEADFULL'}
                            ]}
                            formClassName={classes.inline_block_marlf } 
                            />
  
  <Divider className={classes.divider}></Divider>
            <SelectInput source="app_type"
                            choices={[
                                {id: 'WEB', name: 'WEB'},
                                {id: 'MOVIL', name: 'MOVIL'},
                            ]}
                            formClassName={classes.inline_block }       />

           <FormDataConsumer formClassName={classes.inline_block_marlf }>
               {({ formData, ...rest }) =>formData.app_type &&
                    <ReferenceInput source="aplication_id" reference="applications"  filter={{_filter:'"type":"' +formData.app_type +'"'}} {...rest}> 
                    <SelectInput optionText="name" />
                    </ReferenceInput>
                
               }
          </FormDataConsumer>

          <FormDataConsumer formClassName={classes.inline_block_marlf }>
               {({ formData, ...rest }) =>formData.aplication_id &&
                             <ReferenceInput source="version_id" reference="versions"  filter={{_filter:'"aplication_id":"' +formData.aplication_id +'"'}} {...rest}>
                             <SelectInput optionText="version" />
                             </ReferenceInput>
               }
          </FormDataConsumer>
       
  
        
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
 
));

