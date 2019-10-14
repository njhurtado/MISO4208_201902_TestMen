//Complete siguiendo las instrucciones del taller
var {defineSupportCode} = require('cucumber');
var {expect} = require('chai');

defineSupportCode(({Given, When, Then}) => {
  Given('I go to dollibar home screen', () => {
    browser.url('/dolibarr/');
  });

  When(/^I fill with (.*) and (.*)$/ , (email, password) => {
     var cajaLogIn = browser.element('.login_table');

    var mailInput = cajaLogIn.element('input[name="username"]');
    mailInput.click();
    mailInput.keys(email);

    var passwordInput = cajaLogIn.element('input[name="password"]');
    passwordInput.click();
    passwordInput.keys(password)
  });

  When('I try to login', () => {
    var cajaLogIn = browser.element('.login_table');
    cajaLogIn.element('input[type="submit"]').click()
  });

  Then('I expect to see {string}', error => {
    browser.waitForVisible('.dropdown-toggle.login-dropdown-a', 5000);
    var alertText = browser.element('.dropdown-toggle.login-dropdown-a').getText();
    expect(alertText).to.include(error);
  });
  
  Then('I click {string}', link => {
    browser.waitForVisible(link, 5000);
    browser.element(link).click();
  });

  Then('I expect to have an account button', () => {
    browser.waitForVisible(".dropdown-toggle.login-dropdown-a", 5000);
    var buttonCta = browser.element('.dropdown-toggle.login-dropdown-a');
    expect(buttonCta).to.include('admin');
   });

   Then('I expect to view this error', () => {
    browser.waitForVisible('.sweet-alert', 10000);
    var alertText = browser.element('.text-muted.lead').getText();
    expect(alertText).to.include('Ya existe un usuario registrado');
  });
  
  Then('I expect to register succesfully', () => {
    browser.waitForVisible('.sweet-alert', 10000);
    var alertText = browser.element('.text-muted.lead').getText();
    expect(alertText).to.include('Verifica tu correo y activa tu cuenta');
  });

   Then('I do not expect to see {string}', error => {
     browser.waitForVisible('.aviso.alert.alert-danger', 5000);
     var alertText = browser.element('.aviso.alert.alert-danger').getText();
     expect(alertText).to.include(error);
   });


   When(/^I fill name with (.*)$/ , (name) => {
    var cajaSignUp = browser.element('.cajaSignUp');
    var input = cajaSignUp.element('input[name="nombre"]');
    input.click();
    input.keys(name);
   });

   When(/^I fill last name with (.*)$/ , (last_name) => {
    var cajaSignUp = browser.element('.cajaSignUp');
    var input = cajaSignUp.element('input[name="apellido"]');
    input.click();
    input.keys(last_name);
   });

   When(/^I fill email with (.*)$/ , (email) => {
    var cajaSignUp = browser.element('.cajaSignUp');
    var input = cajaSignUp.element('input[name="correo"]');
    input.click();
    input.keys(email);
   });

   When(/^I fill password with (.*)$/ , (password) => {
    var cajaSignUp = browser.element('.cajaSignUp');
    var input = cajaSignUp.element('input[name="password"]');
    input.click();
    input.keys(password);
   });

   When('I accept the terms and conditions', () => {
    var cajaSignUp = browser.element('.cajaSignUp');
    var input = cajaSignUp.element('input[name="acepta"]');
    input.click();
   });

   When('I select a program', () => {
    var cajaSignUp = browser.element('.cajaSignUp');
    var programSelector = cajaSignUp.element('select[name="idPrograma"]');
    programSelector.selectByValue("12");
   });

   When('I try to sign up', () => {
    var cajaSignUp = browser.element('.cajaSignUp');
    cajaSignUp.element('button=Registrarse').click()
   });

});