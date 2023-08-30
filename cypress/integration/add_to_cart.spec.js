
context('Home', () => {
  it('should load the home page', () => {
    cy.visit('/')
  
})

it("There is products on the page", () => {
  cy.get(".products article").should("be.visible");
});

it("There is 2 products on the page", () => {
  cy.get(".products article").should("have.length", 2);
});
it("should click on any product and go to the product details page", () => {
  cy.get(":nth-child(1) > a > img").click();
  cy.url().should("include", "/products");
})
 it("should add the product to the cart", () => {
   cy.get(".btn").click();
   cy.get('.end-0 > .nav-link').click();
    cy.url().should("include", "/cart");
    cy.get(".cart-show").should("be.visible");
    cy.get(".cart-show").should("have.length", 1);
 })

})