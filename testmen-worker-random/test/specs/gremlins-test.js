function loadScript(callback) {
  var s = document.createElement('script');
  s.src = 'https://rawgithub.com/marmelab/gremlins.js/master/gremlins.min.js';
  if (s.addEventListener) {
    s.addEventListener('load', callback, false);
  } else if (s.readyState) {
    s.onreadystatechange = callback;
  }
  document.body.appendChild(s);
}

function unleashGremlins(ttl, callback) {
  function stop() {
    horde.stop();
    callback();
  }


  //Determina el tipo de navegador para invocar la función que estblece la correspondencia con el tipo de componente
  function matchesSelector(el, selector) {
    if (el.webkitMatchesSelector) {
        matchesSelector = function(el, selector) {
            return el.webkitMatchesSelector(selector);
        };
    } else if (el.mozMatchesSelector) {
        matchesSelector = function(el, selector) {
            return el.mozMatchesSelector(selector);
        };
    } else if (el.msMatchesSelector) {
        matchesSelector = function(el, selector) {
            return el.msMatchesSelector(selector);
        };
    } else if (el.oMatchesSelector) {
        matchesSelector = function(el, selector) {
            return el.oMatchesSelector(selector);
        };
    } else {
        throw new Error('Novegador no soportado');
    }
    return matchesSelector(el, selector);
  }

  //Crea la horda de gremlins seleccionado el tipo de componentes que son diligenciables y los alementos a los cuales se puede hacer clic, para hacer más eficiente la prueba
  var horde = window.gremlins.createHorde()
  .gremlin(gremlins.species.formFiller()
  .canFillElement(function(element) {
    return document.body.contains(element) && (matchesSelector(element, "textarea") || matchesSelector(element, 'input[type="text"]') || matchesSelector(element, 'input[type="password"]') || matchesSelector(element, 'input[type="number"]') || matchesSelector(element, 'input[type="email"]'));
  }))
  .gremlin(gremlins.species
    .clicker()
    .clickTypes(['click'])
    .canClick(function(element) {
      return document.body.contains(element) && (matchesSelector(element, "a") || matchesSelector(element, "button"));
  }))
  //se le da más prioridad al gremlin clicker [clicker,formFiller,toucher,scroller ]
  horde.strategy(gremlins.strategies.distribution()
   .delay(50)
   .distribution([0.6,0.4])
  );
  
  horde.seed(1234);

  horde.after(callback);
  window.onbeforeunload = stop;
  setTimeout(stop, ttl);
  horde.unleash();
}

describe('Monkey testing with gremlins ', function() {

  function getRandomInt(min, max) {
      min = Math.ceil(min);
      max = Math.floor(max);
      return Math.floor(Math.random() * (max - min)) + min;
  };

  it('it should not raise any error', function() {
    var tiempoCargaScript = 100000; 
    var timpoEjecucion = 50000;
    browser.url('/dolibarr/');
    browser.waitForVisible('.login_table', 5000);
    var cajaLogIn = browser.element('.login_table');

    var mailInput = cajaLogIn.element('input[name="username"]');
    mailInput.click();
    mailInput.keys('admin');

    var passwordInput = cajaLogIn.element('input[name="password"]');
    passwordInput.click();
    passwordInput.keys('Temporal01');

    cajaLogIn.element('input[type="submit"]').click();

    browser.waitForVisible('.side-nav-vert', 5000);
    var input = browser.element('a[title="Terceros"]');
    input.click();

    var elementos = ['Nuevo tercero','Listado', 'Nuevo cliente potencial', 'Nuevo cliente', 'Nuevo Contacto/Dirección'];

    browser.waitForVisible('.side-nav', 5000);
    var input1 = browser.element('a='+elementos[getRandomInt(0,4)]);
    input1.click();

    browser.timeoutsAsyncScript(tiempoCargaScript);
    browser.executeAsync(loadScript);

    browser.timeoutsAsyncScript(tiempoCargaScript);
    browser.executeAsync(unleashGremlins, timpoEjecucion);
  });

  afterAll(function() {
    browser.log('browser').value.forEach(function(log) {
      browser.logger.info(log.message.split(' ')[2]);
    });
  });

});