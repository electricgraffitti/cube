# == Schema Information
#
# Table name: headers
#
#  id         :integer(4)      not null, primary key
#  page       :string(255)
#  header     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Header < ActiveRecord::Base
  
  named_scope :index_header, :conditions => {:page => "home"}
  named_scope :about_header, :conditions => {:page => "about"}
  named_scope :clients_header, :conditions => {:page => "clients"}
  named_scope :blogs_header, :conditions => {:page => "blogs"}
  named_scope :contact_header, :conditions => {:page => "contact"}
  named_scope :quote_header, :conditions => {:page => "quote"}
  named_scope :marketing_header, :conditions => {:page => "marketing"}
  named_scope :apps_header, :conditions => {:page => "apps"}
  named_scope :ecommerce_header, :conditions => {:page => "ecommerce"}
  named_scope :design_header, :conditions => {:page => "design"}
  named_scope :hosting_header, :conditions => {:page => "hosting"}
  named_scope :domain_header, :conditions => {:page => "domain"}
  named_scope :css_header, :conditions => {:page => "css"}
  named_scope :php_header, :conditions => {:page => "php"}
  named_scope :html_header, :conditions => {:page => "html"}
  named_scope :flash_header, :conditions => {:page => "flash"}
  named_scope :ruby_header, :conditions => {:page => "ruby"}
  named_scope :sql_header, :conditions => {:page => "sql"}
  named_scope :javascript_header, :conditions => {:page => "javascript"}
  named_scope :rails_header, :conditions => {:page => "rails"}
  
  
end
