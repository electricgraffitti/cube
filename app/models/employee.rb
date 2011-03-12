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
  
  #callbacks
   after_update :save_assets

   #associations
   has_many :assets, :as => :attachable

   #validations
   validates_presence_of :name, :title, :content

   #redcloth
   acts_as_textiled :content

   #named scopes
   named_scope :small_list, lambda { |limit| {:include => [:assets], :limit => limit}}
   named_scope :last_created, :order => "created_at DESC"

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
