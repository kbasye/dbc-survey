class Question < ActiveRecord::Base
  attr_accessible :body, :creation_id, :options_attributes
  
  belongs_to :creation
  
  has_many :options, :dependent => :destroy
  
  accepts_nested_attributes_for :options, :reject_if => lambda { |a| a[:content].blank? }

end
