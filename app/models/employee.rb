# == Schema Information
#
# Table name: employees
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Employee < ActiveRecord::Base
  
  validates_presence_of :name, :title, :content
  
end
