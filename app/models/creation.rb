class Creation < ActiveRecord::Base
  attr_accessible :body, :title, :questions_attributes

  belongs_to :user
  
  has_many :questions, :dependent => :destroy
  
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:body].blank? }
  
end
