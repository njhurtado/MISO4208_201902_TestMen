
describe('Dollibar login', function() {
    it('Visits Dollinnar and succesfull login', function() {
        cy.visit('http://127.0.0.1/dolibarr')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("Temporal01")
        cy.get('.login_table').find('input[type="submit"]').click()
        cy.wait(1000);   
	cy.screenshot('./reports/vrt/after1');
        cy.url().should('include', '/index.php?mainmenu=home') 
        cy.get('.dropdown-toggle.login-dropdown-a').contains('admin')
    })

      it('Fill a ticket succesfull', function() {
        cy.visit('http://127.0.0.1/dolibarr')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("Temporal01")
        cy.get('.login_table').find('input[type="submit"]').click()
        cy.contains('Financiera').click()
        cy.contains('Nueva factura').click()
        //cy.get('.select2-selection.select2-selection--single.flat.minwidth300').find('.select2-selection__arrow').click().contains('Nels').click()
        //cy.get('.select2-selection.select2-selection--single.flat.minwidth300').click()
	//.find('.select2-search__field').click().contains('Nels').click()
	cy.get('.tabBar.tabBarWithBottom').find('.select2-selection__arrow').click().type('Nels').click()

	cy.screenshot('./reports/vrt/after3');
        cy.get('.select2-search.select2-search--dropdown').find('input[type="search"]').type('{downarrow}{downarrow}{enter}', {force:true})
        cy.get('.tabBar.tabBarWithBottom').find('button[name="_useless"]').click()
        cy.get('.tabBar.tabBarWithBottom').find('select[name="mode_reglement_id"]').select('Efectivo')
        cy.get('.tabBar.tabBarWithBottom').find('textarea[name="note_public"]').click().type("Pago de productos comprados")
        cy.get('div.center').find('input[type="submit"]').click()
        //cy.get('.arearef.heightref.valignmiddle.centpercent').contains('Nelson Hurtado')
        cy.get('.tabBar').find('select[name="type"]').select('Producto')
        cy.get('.tabBar').find('textarea[name="dp_desc"]').click().type("Resma de papel")
        cy.get('.tabBar').find('input[name="price_ht"]').click().type("12000")
        cy.get('.tabBar').find('input[name="qty"]').click().type("10")
        cy.get('.tabBar').find('input[name="addline"]').click()
        cy.get('.tabBar').contains('1.320.000,00')
    })

})

