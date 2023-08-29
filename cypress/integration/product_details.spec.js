
context('Home', () => {
  it('should load the home page', () => {
    cy.visit('http://localhost:3000')
  
})

it("There is products on the page", () => {
  cy.get(".products article").should("be.visible");
});

it("There is 12 products on the page", () => {
  cy.get(".products article").should("have.length", 12);
});
it("should click on any product and go to the product details page", () => {
  cy.get(":nth-child(1) > a > img").click();
  cy.url().should("include", "/products");
})

})