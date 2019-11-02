import React from 'react';
//import { Admin } from 'react-admin';
//import { Admin, Resource, ListGuesser } from 'react-admin';
import { Admin, Resource/*, ListGuesser, EditGuesser */} from 'react-admin';
import { AplicationList,AplicationEdit, AplicationCreate } from './components/aplications';
import { ParamList,ParamEdit, ParamCreate } from './components/params';
import { TestList,TestEdit, TestCreate } from './components/tests';
import { TestMatrixList,TestMatrixEdit, TestMatrixCreate } from './components/testmatrix';
import { ToolList,ToolEdit, ToolCreate } from './components/tools';
import { VersionList,VersionEdit, VersionCreate } from './components/versions';
import { ExecutionList,ExecutionEdit, ExecutionCreate } from './components/executions';
import { ResultList } from './components/results';
import { FileList } from './components/files';
import jsonServerProvider from 'ra-data-json-server';
//import jsonServerProvider from './dataProvider';

const dataProvider = jsonServerProvider('http://localhost:3000');
//const App = () => <Admin dataProvider={dataProvider} />;
const App = () => (
      <Admin dataProvider={dataProvider}>
         <Resource name="applications" list={AplicationList} edit={AplicationEdit} create={AplicationCreate}/>
         <Resource name="tests" list={TestList} edit={TestEdit} create={TestCreate}/>
         <Resource name="params" list={ParamList} edit={ParamEdit} create={ParamCreate}/>
         <Resource name="testmatrix" list={TestMatrixList} edit={TestMatrixEdit} create={TestMatrixCreate}/>
         <Resource name="tools" list={ToolList} edit={ToolEdit} create={ToolCreate}/>
         <Resource name="versions" list={VersionList} edit={VersionEdit} create={VersionCreate}/>
         <Resource name="execution" list={ExecutionList} edit={ExecutionEdit} create={ExecutionCreate}/>
         <Resource name="results" list={ResultList} />
         <Resource name="files" list={FileList} />
      </Admin>
  );

export default App;
