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
                    :styles => { :medium => "285x160", :small => "185x185", :thumb => "90x90", :tiny => "50x50" },
                    :url => "/assets/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/assets/:id/:style_:basename.:extension"
  
end
