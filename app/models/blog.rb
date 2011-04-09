# == Schema Information
#
# Table name: blogs
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  sub_title  :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  permalink  :string(255)
#

class Blog < ActiveRecord::Base
  

  cattr_reader :per_page
  @@per_page = 5

  
  #callbacks
  after_update :save_assets
  
  #associations
  has_many :assets, :as => :attachable
  accepts_nested_attributes_for :assets, :allow_destroy => true
  
  #validations
  validates_presence_of :title, :sub_title, :permalink
  
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
  
  def self.search(search, page)
   paginate :page => page, 
            :conditions => ['title like ?', "%#{search}"],
            :order => 'created_at DESC'
  end
  
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
