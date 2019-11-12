const fs = require('fs');
const readline = require('readline');
const { exec } = require('child_process');
let csvToJson = require('convert-csv-to-json');


exports.leerArchivo = function(filename) {
    let games = [];
    let rd = readline.createInterface({
        input: fs.createReadStream(filename),
        console: false
    });

    return new Promise(function(resolve,reject) {
        rd.on('line', function(line) {
            var arr = line.split(",");
            games.push({name:arr[0], title:arr[1]});
        });

        rd.on('close', function() {
            var json = JSON.stringify(games);
            resolve(games);
        });
        // on 'error' call reject(error)
    });
};

exports.generardatos = function(filename, cantidad) {
    return new Promise(function(resolve,reject) {
        exec('curl "https://api.mockaroo.com/api/95e33690?count=' +cantidad+'&key=1483a6f0" > '+filename, (err, stdout, stderr) => {
            if (err) {
                // node couldn't execute the command
                console.log("Error generando datos");
                reject(err);
            }
            let json = csvToJson.fieldDelimiter(',').getJsonFromCsv(filename);
            resolve(json);
        });

    });
};


exports.reemplazarValores = function(filename, valor1, valor2) {
    let rd = readline.createInterface({
        input: fs.createReadStream(filename),
        console: false
    });

    return new Promise(function(resolve,reject) {
        var contenidoArchivo = "";
        rd.on('line', function(line) {
            var modificada = line;
            modificada = reemplazarValor(modificada,"{semilla}", valor1);
            modificada = reemplazarValor(modificada,"{timpoEjecucion}", valor2);
            contenidoArchivo += modificada +"\n";
        });

        rd.on('close', function() {
            resolve(contenidoArchivo);
        });
        // on 'error' call reject(error)
    });
};

exports.completarValores = function(filename, valores, cantidad) {
    let rd = readline.createInterface({
        input: fs.createReadStream(filename),
        console: false
    });

    return new Promise(function(resolve,reject) {
        var contenidoArchivo = "";
        rd.on('line', function(line) {
            var modificada = line;
            contenidoArchivo += line +"\n";
        });

        rd.on('close', function() {
            for(let i=0; i<cantidad;i++){
                if(valores[i]) {
                    //console.log(valores[i]);
                    let prueba = valores[i];
                    var linea = "| ";
                    //console.log("json -> " + jsonval);
                    var keys = Object.keys(prueba);
                    //console.log("llaves -> " + keys);
                    for(let j=0; j<keys.length;j++){
                        linea += prueba[keys[j]] + " |";  
                    } 
                    contenidoArchivo += linea +"\n";
                }
            }
            resolve(contenidoArchivo);
        });
        // on 'error' call reject(error)
    });
};


function reemplazarValor( cadena, nombre, valor) {
    var modificada;
    if(cadena.indexOf(nombre >= 0)) {
        modificada = cadena.replace(nombre, valor);
    }
    return modificada;
}

