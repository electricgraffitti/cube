# == Schema Information
#
# Table name: code_blogs
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  sub_title  :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class CodeBlog < ActiveRecord::Base
  
  validates_presence_of :title, :sub_title, :content
  
end
