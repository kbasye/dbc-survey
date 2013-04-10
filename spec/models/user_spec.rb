# spec/models/user.rb
require 'spec_helper'

describe User do

  it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
  end
  
  ## Username Validations
  it "is invalid without a username" do
  	FactoryGirl.build(:user, username: nil).should_not be_valid
  end

  it 'is invalid if username is not unique' do
  	FactoryGirl.create(:user, username: "kbasye")
  	FactoryGirl.build(:user, username: "kbasye").should_not be_valid

  end

  ## Email Validations
  it "is invalid without an email" do
  	FactoryGirl.build(:user, email: nil).should_not be_valid
  end

  it "is invalid with incorrect email format" do
  	FactoryGirl.build(:user, email: "k.com").should_not be_valid
  	FactoryGirl.build(:user, email: ".com").should_not be_valid
  	FactoryGirl.build(:user, email: "kasdfj@com").should_not be_valid
  	FactoryGirl.build(:user, email: "k@com").should_not be_valid
  	FactoryGirl.build(:user, email: "laskdjfslkjf").should_not be_valid

  end

  it 'is invalid if email is not unique' do
  	FactoryGirl.create(:user, email: "kbasye@gmail.com")
  	FactoryGirl.build(:user, email: "kbasye@gmail.com").should_not be_valid

  end

  ## Password Validations
  it "is invalid with password less than 6 or greater than 20 characters" do
  	FactoryGirl.build(:user, password: "sdf").should_not be_valid
  	FactoryGirl.build(:user, password: "alsffldkeicmdjwoxksiwikslfdlfkj").should_not be_valid
  end
  
  it "is invalid without a password" do
  	FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  ## Authentication Validations
  it { should respond_to(:authenticate) }





end






