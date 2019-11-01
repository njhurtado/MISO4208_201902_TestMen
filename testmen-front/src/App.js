import React from 'react';
//import { Admin } from 'react-admin';
//import { Admin, Resource, ListGuesser } from 'react-admin';
import { Admin, Resource, ListGuesser, EditGuesser } from 'react-admin';
import { AplicationList,AplicationEdit, AplicationCreate } from './components/aplications';
import { ParamList,ParamEdit, ParamCreate } from './components/params';
import { TestList,TestEdit, TestCreate } from './components/tests';
import jsonServerProvider from 'ra-data-json-server';
//import jsonServerProvider from './dataProvider';

const dataProvider = jsonServerProvider('http://localhost:3000');
//const App = () => <Admin dataProvider={dataProvider} />;
const App = () => (
      <Admin dataProvider={dataProvider}>
         <Resource name="applications" list={AplicationList} edit={AplicationEdit} create={AplicationCreate}/>
         <Resource name="tests" list={TestList} edit={TestEdit} create={TestCreate}/>
         <Resource name="params" list={ParamList} edit={ParamEdit} create={ParamCreate}/>
      </Admin>
  );

export default App;
