context('Home', () => {
  it('should load the home page', () => {
    cy.visit('/')
})
 it("should click on signup and go to the signup page", () => {
   cy.get('[href="/signup"]').click();
   cy.url().should("include", "/signup");
 })
  it("should create a form and submit it", () => {
   cy.get('#user_name').type("olawale10");
    cy.get('#user_email').type("A@90.com");
    cy.get('#user_password').type("123456");
    cy.get('#user_password_confirmation').type("123456");
    cy.get('.submit-btn > input').click();
    cy.url().should("include", "/");
  })
  it ("should logout", () => {
    cy.get('[href="/logout"]').click();
    cy.url().should("include", "/");
  })
  it("should click on login and go to the login page", () => {
    cy.get('[href="/login"]').click();
    cy.url().should("include", "/login");
  })
  it("should login", () => {
    cy.get('#email').type("A@90.com");
    cy.get('#password').type("123456");
    cy.get('[type="submit"]').click();
    cy.url().should("include", "/");
  })
});

context('Home', () => {
  it('should load the home page', () => {
    cy.visit('/')
})
  it("should click on login and go to the login page", () => {
    cy.get('[href="/login"]').click();
    cy.url().should("include", "/login");
  })
  it("should login", () => {
    cy.get('#email').type("A@90.com");
    cy.get('#password').type("123456");
    cy.get('[type="submit"]').click();
    cy.url().should("include", "/");
  })
});