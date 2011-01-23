# == Schema Information
#
# Table name: assets
#
#  id                      :integer(4)      not null, primary key
#  created_at              :datetime
#  updated_at              :datetime
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer(4)
#  attachment_updated_at   :datetime
#  attachable_id           :integer(4)
#  attachable_type         :string(255)
#

class Asset < ActiveRecord::Base
  
  belongs_to :attachable, :polymorphic => true
  
  #paperclip
  has_attached_file :attachment, 
                    :styles => { :medium => "650x323", :small => "285x1142", :thumb => "178x88", :tiny => "89x44" },
                    :url => "/assets/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/assets/:id/:style_:basename.:extension"
  
end
