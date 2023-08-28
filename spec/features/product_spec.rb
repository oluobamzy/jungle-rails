require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "should have all fields present" do
      @category = Category.new(name: "test")
      @product = Product.new(name: "test", price: 100, quantity: 1, category: @category)
      expect(@product).to be_valid
    end
    it "should have a price" do
      @category = Category.new(name: "test")
      @product = Product.new(name: "test", price: 100, quantity: 1, category: @category)
      expect(@product.price).to be_present
    end
    it "should have a quantity" do
      @category = Category.new(name: "test")
      @product = Product.new(name: "test", price: 100, quantity: 1, category: @category)
      expect(@product.quantity).to be_present
    end
    it "should have a category" do
      @category = Category.new(name: "test")
      @product = Product.new(name: "test", price: 100, quantity: 1, category: @category)
      expect(@product.category).to be_present
    end
    it "should have a name" do
      @category = Category.new(name: "test")
      @product = Product.new(name: "test", price: 100, quantity: 1, category: @category)
      expect(@product.name).to be_present
    end

  end
end
