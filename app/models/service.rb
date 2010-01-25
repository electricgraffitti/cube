# == Schema Information
#
# Table name: services
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  sub_title  :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Service < ActiveRecord::Base
  
  validates_presence_of :title, :sub_title, :content
  
end
