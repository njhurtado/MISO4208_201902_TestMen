import React, { Component } from 'react';
import PropTypes from 'prop-types'
import {CardActions,ShowButton} from '@material-ui/core/CardActions';
import Button from '@material-ui/core/Button';

import {
    Query,
    List, Create, Edit, Datagrid, TextField,
    EditButton, SimpleForm, DisabledInput,
    SelectInput, ReferenceInput,
    TextInput,SelectArrayInput
} from 'react-admin';
import withStyles from '@material-ui/core/styles/withStyles';
import Divider from '@material-ui/core/Divider';
import operators from './dataMutationType';
import MatrixApproveButton from './MatrixApproveButton';
export function objToString(obj) {
    var str = '';
    for (var p in obj) {
        if (obj.hasOwnProperty(p) && p !== 'preventDefault') {
            str += obj[p];
        }
    }
    return str;
}

var dat = {};
const cardActionStyle = {
    zIndex: 2,
    display: 'inline-block',
    float: 'right',
};

export const onsave=(context) =>  {
    //const { push, record, showNotification } = this.props;
   console.log(context);
};

/*export handleClick () => {
    const { push, record, showNotification } = this.props;
    const updatedRecord = { ...record};
    console.log(this.props);
    fetch(`/testmatrix`, { method: 'POST', body: updatedRecord })
        .then(() => {


            showNotification('testmatrix approved');
            push('/testmatrix');
        })
        .catch((e) => {
            showNotification('Error: comment not approved', 'warning')
        });
}
*/
const MatrixCreateActions = ({ basePath, data, resource }) => (
    <CardActions style={cardActionStyle}>
        <MatrixApproveButton record={data} />
    </CardActions>
);

class DataFormCreate extends Component {

    constructor(props) {
        super(props);
        this.handleOnchangeAppType = this.handleOnchangeAppType.bind(this);
        this.handleOnchangeApp = this.handleOnchangeApp.bind(this);
        this.handleOnchangeVersion = this.handleOnchangeVersion.bind(this);
        this.handleOnchangeMutation = this.handleOnchangeMutation.bind(this);
        this.handleOnchangeTestType = this.handleOnchangeTestType.bind(this);
        this.handleOnchangeMode = this.handleOnchangeMode.bind(this);
        this.handleShowTest = this.handleShowTest.bind(this);
        
        this.state = {
            versions_choices: null,
            apps_choices: null,
            app_version_selected:'',
            tools_choices: null,
            test_choices: null,
            app_type_movil: false,
            has_mutation: false,
            test_type_selected: '',
            mode_selected: '',
            showTest:false
        };

    }
    componentWillMount() {
        console.log('----------------testmatrix----------------------');
        fetch('http://localhost:3000/matrixdataform')
            .then(response => response.json()
            ).then(df => {
                dat = df;
                console.log(dat)
            })
    }

    handleOnchangeAppType(event) {
        var appName = objToString(event)
        //console.log(objToString(appName));
        var apps_choices = []
        var tools_choices=[]
        dat.applications.map(function (ap) {
            if (ap.type === appName)
                apps_choices.push(ap);
        })

        dat.tools.map(function (ap) {
            if (ap.app_type === appName)
            tools_choices.push(ap);
        })


        this.setState((state, props) => {
            return { apps_choices: apps_choices, 
                tools_choices:tools_choices,
                versions_choices: null, 
                app_type_movil:appName==='MOVIL'};
        })
        this.handleShowTest(event);
       // console.log("handleOnchangeAppType");
        //console.log(apps_choices);
    }
    handleOnchangeApp(event) {
        console.log("handleOnchangeApp");
        var objID = objToString(event)
        console.log(objToString(objID));
        var versions_choices = []
        dat.versions.map(function (ver) {
            console.log(ver);
            if (ver.aplication_id === objID)
                versions_choices.push(ver);
        })

        this.setState((state, props) => {
            return { versions_choices: versions_choices,app_version_selected:'' };
        })
        this.handleShowTest(event);
        console.log(versions_choices);
    }
    handleOnchangeVersion(event) {
        
        var value=objToString(event);
        console.log("handleOnchangeVersion-->"+value);
        this.state.app_version_selected=value;
        this.setState((state, props) => {
            return {app_version_selected : value};
        })
        this.handleShowTest(event);
    }

    handleOnchangeMutation(event) {
        var value = objToString(event)
        this.setState((state, props) => {
            return { has_mutation:'S'===value};
        })

        console.log(value);
    }

    handleOnchangeTestType(event) {
        var value = objToString(event)
        this.state.test_type_selected=value;
        this.setState((state, props) => {
            return { test_type_selected:value};
        })
        this.handleShowTest(event);

        console.log(value);
    }

    handleOnchangeMode(event) {
        var value = objToString(event)
        this.setState((state, props) => {
            return { mode_selected:value};
        })

        console.log(value);
    }

    handleShowTest(event) {
        var showTest=false;
        var test_choices = []
        var app_version_selected=this.state.app_version_selected;
        var test_type_selected=this.state.test_type_selected;
        var mode_selected=this.state.mode_selected;

        if(app_version_selected !=='' &&
        test_type_selected !== ''&&
        mode_selected !== ''){
            showTest=true;
        }
        if(showTest){            
        dat.tests.map(function (row) {
            //console.log(row);
            if (row.type ===test_type_selected
                && row.mode===mode_selected
                && row.version_id===app_version_selected)
            test_choices.push(row);
        })
        }
        this.setState((state, props) => {
            return { showTest:showTest,test_choices:test_choices};
        })
       /* console.log("test_choices"+showTest);
        console.log(this.state.test_type_selected);
        console.log(this.state.mode_selected);
        console.log(this.state.app_version_selected);

        console.log(test_choices);*/
    }
    render() {
        const { classes } = this.props;
        const optionRendererVersion = choice => `${choice.version}`;
        const optionRendererTools = choice => `${choice.name} ${choice.version}`;
        const optionRendererAppVersion = choice => `${choice.description}`;
        const redirect = (basePath, id, data) => `/testmatrix`;
        //console.log(classes);
        //withStyles(listStyles)(({ classes, ...props }) =>
        return (
            <span className={classes.contentform}>
 <SimpleForm  save={onsave(this.props)} {...this.props} redirect={redirect}>
            <SelectInput source="test_type" choices={[
                { id: 'RANDOM', name: 'RANDOM' },
                { id: 'E2E', name: 'E2E' },
                { id: 'BDT', name: 'BDT' }
            ]}
                formClassName={classes.inline_block}
                onChange={this.handleOnchangeTestType}
            />

            <SelectInput source="test_mode" choices={[
                { id: 'HEADLESS', name: 'HEADLESS' },
                { id: 'HEADFULL', name: 'HEADFULL' },
                { id: 'VRT', name: 'VRT' }
            ]}
                formClassName={classes.inline_block_marlf}
                onChange={this.handleOnchangeMode}
            />


            <SelectInput source="app_type"
                choices={dat.app_type_choices}
                formClassName={classes.inline_block_marlf}
                onChange={this.handleOnchangeAppType} />

            {this.state.apps_choices ? <SelectInput source="aplication_id"
                choices={this.state.apps_choices}
                formClassName={classes.inline_block_marlf}
                onChange={this.handleOnchangeApp} /> : null}

            {this.state.versions_choices ? <SelectInput source="version_id" optionText={optionRendererVersion}
                    choices={this.state.versions_choices}
                    onChange={this.handleOnchangeVersion} 
                    formClassName={classes.inline_block}
                    /> : null}
           
           {this.state.tools_choices ? <SelectInput source="tool_id" optionText={optionRendererTools}
                choices={this.state.tools_choices}
                formClassName={classes.inline_block_marlf}/> : null}

            {this.state.app_type_movil? <SelectInput source="mutation"
                choices={[
                    { id: 'N', name: 'NO' },
                    { id: 'S', name: 'SI' }
                ]} 
                onChange={this.handleOnchangeMutation}
            />:null}
            
            {this.state.has_mutation? 
            <SelectArrayInput label="Operators" source="mutation_value" choices={operators} />:null}

            {this.state.test_type_selected==='RANDOM'? <TextInput source="random_seed" label="Seed" />:null}
            {this.state.test_type_selected==='RANDOM'? <TextInput source="random_events" label="Num. Events" />:null}

            {this.state.showTest && this.state.test_choices.length>0? 
            <SelectArrayInput label="Test" source="tests_list" choices={this.state.test_choices} optionText={optionRendererAppVersion} />:null}

           {/* <SelectInput source="tool_version"
                choices={[
                    { id: 'Android 8.0', name: 'Android 8.0' },
                    { id: '69.0.1', name: '69.0.1' },
                    { id: '77', name: '77' },
                    { id: '57.0.4', name: '57.0.4' },
                    { id: '55.0.2883.91', name: '55.0.2883.91' }
                ]}
            />*/}
         </SimpleForm>

</span>
    )
    }
}
DataFormCreate.propTypes = {
    classes: PropTypes.any
};


export const styles = {
    block: { display: 'block' },
    inline_block: { display: 'inline-block' },
    inline_block_marlf: { display: 'inline-block', marginLeft: 32 },
    divider: { width: '100%', marginTop: 2, height: 0 },
    address: { maxWidth: 544 },
    zipcode: { display: 'inline-block' },
    city: { display: 'inline-block', marginLeft: 32 },
    comment: {
        maxWidth: '20em',
        overflow: 'hidden',
        textOverflow: 'ellipsis',
        whiteSpace: 'nowrap',
    },
    contentform: {
        display: 'block',
        marginTop: '0em',
    }
};
const redirect = (basePath, id, data) => `execution?filter={"_filter":"'matrix_id':'${data.id}'"}&order=ASC&page=1&perPage=10&sort=test_id`;
export const TestMatrixList = props => (
    <List {...props}>
        <Datagrid rowClick={redirect}>
            <TextField source="id" />
            <TextField source="test_type" />
            <TextField source="test_mode" />
            <TextField source="aplication_id" />
            <TextField source="app_type" />
            <TextField source="version_id" />
            <TextField source="tool_id" />
            <TextField source="mutation" />
            <TextField source="mutation_value" />
            <TextField source="random_seed" />
            <TextField source="random_events" />
            
        </Datagrid>
    </List>
);

export const TestMatrixEdit = withStyles(styles)(({ classes, ...props }) => (

    <Edit {...props}>
        <SimpleForm >
            <DisabledInput source="id" />
            <SelectInput source="test_type" choices={[
                { id: 'RANDOM', name: 'RANDOM' },
                { id: 'E2E', name: 'E2E' },
                { id: 'BDT', name: 'BDT' }
            ]}
                formClassName={classes.inline_block}
            />

            <SelectInput source="test_mode" choices={[
                { id: 'HEADLESS', name: 'HEADLESS' },
                { id: 'HEADFULL', name: 'HEADFULL' }
            ]}
                formClassName={classes.inline_block}
            />
            <SelectInput source="app_type"
                choices={[
                    { id: 'WEB', name: 'WEB' },
                    { id: 'MOVIL', name: 'MOVIL' },
                ]}
                formClassName={classes.inline_block} />


           { /*<ReferenceInput source="aplication_id" reference="applications">
                <SelectInput optionText="name" />
            </ReferenceInput>

            <ReferenceInput source="version_id" reference="versions">
                <SelectInput optionText="version" />
            </ReferenceInput>

            <ReferenceInput source="tool_id" reference="tools">
                <SelectInput optionText="name" />
            </ReferenceInput>
            */}

            <SelectInput source="mutation"
                choices={[
                    { id: 'N', name: 'NO' },
                    { id: 'S', name: 'SI' }
                ]}
            />
           { /*<SelectInput source="tool_size"
                choices={[
                    { id: '4.95', name: '4.95' },
                    { id: '6', name: '6' }
                ]}
            />
            <SelectInput source="tool_version"
                choices={[
                    { id: 'Android 8.0', name: 'Android 8.0' },
                    { id: '69.0.1', name: '69.0.1' },
                    { id: '77', name: '77' },
                    { id: '57.0.4', name: '57.0.4' },
                    { id: '55.0.2883.91', name: '55.0.2883.91' }
                ]}
            />*/}

        </SimpleForm>
    </Edit>
));


export const TestMatrixCreate = withStyles(styles)(({ classes, ...props }) => (


    <Create {...props} >
         

         <DataFormCreate classes={classes} {...props} />

    </Create>

));

