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
#  tag        :string(255)
#  permalink  :string(255)
#

class CodeBlog < ActiveRecord::Base
  
  #callbacks
   after_update :save_assets

   #associations
   has_many :assets, :as => :attachable
   accepts_nested_attributes_for :assets, :allow_destroy => true
   
   #validations
   validates_presence_of :title, :sub_title, :content

   #redcloth
   acts_as_textiled :content

   #named scopes
   named_scope :small_list, lambda { |limit| {:include => [:assets], :limit => limit}}
   named_scope :last_created, :order => "created_at DESC"
   
   #============================= Class Methods ==================================#

   # Sets Permalink Routes
   def to_param
     "#{id}-#{permalink}"
   end

   #pulls the assets from the form
   def attachments=(atts)
     atts.each do |attachment|
       if attachment[:id].blank?
         assets.build(attachment)
       else
         asset = assets.detect { |a| a.id == attachment[:id].to_i }
       end
     end    
   end

   def save_assets
     assets.each do |a|
       a.save(false)
     end
   end
  
end
