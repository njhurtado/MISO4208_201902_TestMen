var TestMatrixModel = {    test_id: null,
    aplication_id: null,
    version_id: null,
	tool_id: null,  
    tests_list: null, 
    app_type: null,
    test_type: null,
    test_mode: null,
    mutation: null,
    mutation_value: null,
    tool_type: null,
    tool_size: null,
    tool_version: null,
    random_events: null,
    random_seed: null }

 function mapEntityMatrixModel(object){

    for(let i of TestMatrixModel){
        console.log(Object.keys(i))
        //var value=Object.keys(i).map(key => i[key]);
        /*f(value)
        query[Object.keys(i)]=new RegExp(value);*/
    }
}
