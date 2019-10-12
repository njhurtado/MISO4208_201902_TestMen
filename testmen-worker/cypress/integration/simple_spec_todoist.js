
describe('TodoIst login', function() {
    
    it('Visits TodoIst and sign up succesfull', function() {
        cy.visit('https://todoist.com/Users/showRegister?success_page=')
        cy.get('.login_singup_form').find('input[name="full_name"]').click().type("Nelson Hurtado")
        cy.get('.login_singup_form').find('input[name="email"]').click().type("njhurtado@gmail.com")
        cy.get('.login_singup_form').find('input[name="pwd"]').click().type("12345678")
        cy.get('.login_singup_form').find('input[type="checkbox"]').check()
        cy.get('.login_singup_form').contains('Create My Account').click()
    })


    it('Visits TodoIst and succesfull login', function() {
        cy.visit('https://todoist.com/Users/showLogin?mini=1')
        cy.get('.login_singup_form.content').find('input[name="email"]').click().type("njhurtado@gmail.com")
        cy.get('.login_singup_form.content').find('input[name="password"]').click().type("12345678")
        cy.get('.content').contains('Log in').click()
    })

})

