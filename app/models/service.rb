# == Schema Information
#
# Table name: services
#
#  id            :integer(4)      not null, primary key
#  title         :string(255)
#  sub_title     :string(255)
#  content       :text
#  created_at    :datetime
#  updated_at    :datetime
#  service_order :integer(4)
#

class Service < ActiveRecord::Base
  
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
   named_scope :indexed_order, :order => "service_order ASC"

end
