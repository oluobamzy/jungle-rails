require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'Validations' do
    it "should have password and password_confirmation" do
      @user = User.new(name: "test", email: "a@a.com",
      password: "test", password_confirmation: "test")
      expect(@user.password).to be_present
      expect(@user.password_confirmation).to be_present
    end
    it "should have a password and password_confirmation match" do
      @user = User.new(name: "test", email: "a@a.com",
      password: "test", password_confirmation: "test")
      expect(@user.password).to eq(@user.password_confirmation)
    end
    it "should have a unique email" do
      @user = User.new(name: "test", email: "a@a.com",
      password: "test", password_confirmation: "test")
      @user.save
      @user2 = User.new(name: "test", email: "a@a.com",
      password: "test", password_confirmation: "test")
      expect(@user2).to_not be_valid
    end
    it "should have name, email and password" do
      @user = User.new(name: "test", email: "a@a.com",
      password: "test", password_confirmation: "test")
      expect(@user.name).to be_present
      expect(@user.email).to be_present
      expect(@user.password).to be_present
    end
    it "should have a password with minimum length of 6" do
      @user = User.new(name: "test", email: "a@a.com",
      password: "test02", password_confirmation: "test02")
      expect(@user.password.length).to be >= 6
    end
  end

end