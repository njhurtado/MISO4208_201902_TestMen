//Complete siguiendo las instrucciones del taller

//Complete siguiendo las instrucciones del taller
var {defineSupportCode} = require('cucumber');
var {expect} = require('chai');

defineSupportCode(({Given, When, Then}) => {
  Given('I go to dollibar home screen', () => {
    browser.url('/');
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
    browser.waitForVisible('.side-nav-vert', 5000);
    var alertText = browser.element('.dropdown-toggle.login-dropdown-a').getText();
    expect(alertText).to.include(error);
  });

  Then('I log out', () => {
    browser.url('/dolibarr/user/logout.php');
  });

  Then('I click modulo {string}', link => {
    browser.waitForVisible('.side-nav-vert', 5000);
    var input = browser.element('a[title="'+link+'"]');
    input.click();
  });

 Then('I click menu {string}', link => {
    browser.waitForVisible('.side-nav', 5000);
    var input = browser.element('a='+link);
    input.click();
  });

  When(/^I fill name with (.*)$/ , (name) => {
    browser.waitForVisible(".tabBar.tabBarWithBottom", 5000);
    var cajaSignUp = browser.element('.tabBar.tabBarWithBottom');
    var input = cajaSignUp.element('input[name="name"]');
    input.click();
    input.keys(name);
   });

  When(/^I fill alias with (.*)$/ , (name) => {
    browser.waitForVisible(".tabBar.tabBarWithBottom", 5000);
    var cajaSignUp = browser.element('.tabBar.tabBarWithBottom');
    var input = cajaSignUp.element('input[name="name_alias"]');
    input.click();
    input.keys(name);
   });

  When('I select customer' , () => {
    browser.waitForVisible(".tabBar.tabBarWithBottom", 5000);
    var cajaSignUp = browser.element('.tabBar.tabBarWithBottom');
    var input = cajaSignUp.element('select[name="client"]');
    input.selectByValue('1');
   });

  When(/^I fill address with (.*)$/ , (name) => {
    browser.waitForVisible(".tabBar.tabBarWithBottom", 5000);
    var cajaSignUp = browser.element('.tabBar.tabBarWithBottom');
    var input = cajaSignUp.element('textarea[name="address"');
    input.click();
    input.keys(name);
   });

  When(/^I fill zipcode with (.*)$/ , (name) => {
    browser.waitForVisible(".tabBar.tabBarWithBottom", 5000);
    var cajaSignUp = browser.element('.tabBar.tabBarWithBottom');
    var input = cajaSignUp.element('input[name="zipcode"]');
    input.click();
    input.keys(name);
   });

  When(/^I fill town with (.*)$/ , (name) => {
    browser.waitForVisible(".tabBar.tabBarWithBottom", 5000);
    var cajaSignUp = browser.element('.tabBar.tabBarWithBottom');
    var input = cajaSignUp.element('input[name="town"]');
    input.click();
    input.keys(name);
   });

  When(/^I fill email with (.*)$/ , (email) => {
     var cajaSignUp = browser.element('.tabBar.tabBarWithBottom');
    var input = cajaSignUp.element('input[name="email"]');
    input.click();
    input.keys(email);
   });

  When(/^I fill phone with (.*)$/ , (email) => {
     var cajaSignUp = browser.element('.tabBar.tabBarWithBottom');
    var input = cajaSignUp.element('input[name="phone"]');
    input.click();
    input.keys(email);
   });

  When('I try to create a customer', () => {
    var cajaSignUp = browser.element('form[name="formsoc"]');
    cajaSignUp.element('input[type="submit"').click()
   });

  Then(/^I expect to have a new customer (.*)$/ , (customer) => {
    browser.waitForVisible(".inline-block.floatleft.valignmiddle.refid.refidpadding", 5000);
    var buttonCta = browser.element('.inline-block.floatleft.valignmiddle.refid.refidpadding').getText();
    expect(buttonCta).to.include(customer);
   });

  When('I select a customer', () => {
	browser.waitForVisible('form[name="add"]', 5000);
    	browser.element('.select2-selection.select2-selection--single.flat.minwidth300').click();
	var cajaSignUp = browser.element('.select2-search.select2-search--dropdown');
	var input = cajaSignUp.element('input[type="search"]')
	input.click();
	input.keys('Nelson Hurtado');
	input.click();
 	//input.selectByValue('Nelson Hurtado');
    	//input.keys('{downarrow}{downarrow}{enter}', {force:true});
   });

  When('I check type of ticket', () => {
    var cajaSignUp = browser.element('form[name="add"]');
    var input = cajaSignUp.element('input[name="type"');
	input.checked(true);
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
    var cajaSignUp = browser.element('div.cajaSignUp');
    cajaSignUp.element('button=Registrarse').click()
   });

});
