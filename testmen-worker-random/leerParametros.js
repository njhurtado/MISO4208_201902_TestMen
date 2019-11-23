
Param = require('./models/param.model.js');


function consultarValorParametro(test_id, nombre) {
    return new Promise(function(resolve,reject) {
        Param.findOneAndUpdate(
            { test_id:test_id, 
            param: nombre}, 
            { $set: { param: nombre } },      
            {
             returnNewDocument: true
            }).then(par => {
              console.log("Param ->" + par);
              if(par) { 
                resolve(par.value);
              }
            });
    });
      
}
 