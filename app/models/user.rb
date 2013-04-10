class User < ActiveRecord::Base
  attr_accessible :username, :email, :password

  has_many :creations

  has_secure_password

  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true, :length => { :in => 6..20 }
  validates :email, :uniqueness => true, :presence => true, :format => { :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }



end
