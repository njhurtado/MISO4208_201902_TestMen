
describe('Dollibar login', function() {
    it('Visits Dollinnar and succesfull login', function() {
        cy.visit('http://127.0.0.1/')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("Temporal01")
        cy.get('.login_table').find('input[type="submit"]').click()
        cy.wait(1000);   
	cy.screenshot('./reports/vrt/after1');
        cy.url().should('include', '/index.php?mainmenu=home') 
        //cy.get('.dropdown-toggle.login-dropdown-a').contains('admin')
    })

     it('Create a Third-party succesfull', function() {
        cy.visit('http://localhost/')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("Temporal01")
        cy.get('.login_table').find('input[type="submit"]').click()
        cy.wait(1000);     
 
        cy.get('.tmenu > #mainmenutd_companies > .tmenucenter > #mainmenua_companies > .mainmenuaspan').click()
        cy.visit('http://localhost/societe/index.php?mainmenu=companies&leftmenu=')
        cy.get('#id-left > .vmenu > .blockvmenupair > .menu_contenu:nth-child(3) > .vsmenu').click()
        cy.wait(1000); 
        cy.visit('http://localhost/societe/card.php?action=create&leftmenu=')
 
       // cy.contains('Third parties').click()
       // cy.contains('New Third Party').click()
       // cy.wait(1000); 
	cy.screenshot('./reports/vrt/after2');
        cy.get('.tabBar.tabBarWithBottom').find('input[name="name"]').click().type("Nelson Hurtado")
        cy.get('.tabBar.tabBarWithBottom').find('input[name="name_alias"]').click().type("Comerciante")
        cy.get('.tabBar.tabBarWithBottom').find('select[name="client"]').select('Customer')
        cy.get('.tabBar.tabBarWithBottom').find('textarea[name="address"]').click().type("Calle 7 No. 6c-54")
        cy.get('.tabBar.tabBarWithBottom').find('input[name="zipcode"]').click().type("057")
        cy.get('.tabBar.tabBarWithBottom').find('input[name="town"]').click().type("Bogota")
        //cy.get('.tabBar.tabBarWithBottom').find('select[name="state_id"]').select('1117')
        //cy.get('.tabBar.tabBarWithBottom').find('#select2-state_id-container').click().contains('BOG').click
        cy.get('.tabBar.tabBarWithBottom').find('input[name="email"]').click().type("nhurtado@gmail.com")
        cy.get('.tabBar.tabBarWithBottom').find('input[name="phone"]').click().type("3115712263")
        cy.get('div.center').find('input[type="submit"]').click()
        cy.get('.inline-block.floatleft.valignmiddle.refid.refidpadding').contains('Nelson Hurtado')
    })

    it('Fill a ticket succesfull', function() {
        cy.visit('http://127.0.0.1/')
        cy.get('.login_table').find('input[name="username"]').click().type("admin")
        cy.get('.login_table').find('input[name="password"]').click().type("Temporal01")
        cy.get('.login_table').find('input[type="submit"]').click()
        cy.contains('Billing').click()
        cy.contains('New invoice').click()
        //cy.get('.select2-selection.select2-selection--single.flat.minwidth300').find('.select2-selection__arrow').click().contains('Nels').click()
        cy.get('.select2-selection.select2-selection--single.flat.minwidth300').click()
	cy.screenshot('./reports/vrt/after3');
        cy.get('.select2-search.select2-search--dropdown').find('input[type="search"]').type('{downarrow}{downarrow}{enter}', {force:true})
        cy.get('.tabBar.tabBarWithBottom').find('button[name="_useless"]').click()
        cy.get('.tabBar.tabBarWithBottom').find('select[name="mode_reglement_id"]').select('Cash')
        cy.get('.tabBar.tabBarWithBottom').find('textarea[name="note_public"]').click().type("Pago de productos comprados")
        cy.get('div.center').find('input[type="submit"]').click()
        cy.get('.arearef.heightref.valignmiddle.centpercent').contains('Nelson Hurtado')
        cy.get('.tabBar').find('select[name="type"]').select('Product')
        cy.get('.tabBar').find('textarea[name="dp_desc"]').click().type("Resma de papel")
        cy.get('.tabBar').find('input[name="price_ht"]').click().type("12000")
        cy.get('.tabBar').find('input[name="qty"]').click().type("10")
        cy.get('.tabBar').find('input[name="addline"]').click()
        cy.get('.tabBar').contains('1,320,000.00')
    })


})

