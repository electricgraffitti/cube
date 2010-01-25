# == Schema Information
#
# Table name: quotes
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  company    :string(255)
#  comment    :text
#  created_at :datetime
#  updated_at :datetime
#

class Quote < ActiveRecord::Base
  
  #redcloth
  acts_as_textiled :content

  #named scopes
  named_scope :small_list, lambda { |limit| {:limit => limit}}
  named_scope :last_created, :order => "created_at DESC"
  
end
