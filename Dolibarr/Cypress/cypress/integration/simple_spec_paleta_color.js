
describe('Visit paleta de colores', function() {
    it('Visits paleta de colores', function() {
        cy.visit('http://127.0.0.1:8887/palette.html')
        cy.get('div[id="actions"]').contains('Generar nueva paleta').click()
        cy.screenshot('paleta_colores_antes')
        cy.get('div[id="actions"]').contains('Generar nueva paleta').click()
        cy.screenshot('paleta_colores_despues')
    })

})

