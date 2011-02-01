# == Schema Information
# Schema version: 20110201172930
#
# Table name: clients
#
#  id                 :integer(4)      not null, primary key
#  title              :string(255)
#  sub_title          :string(255)
#  content            :text
#  created_at         :datetime
#  updated_at         :datetime
#  url                :string(255)
#  active             :boolean(1)
#  list_order         :integer(4)
#  featured           :boolean(1)
#  content_management :boolean(1)
#  ecommerce          :boolean(1)
#  web_application    :boolean(1)
#  web_design         :boolean(1)
#  css                :boolean(1)
#  php                :boolean(1)
#  html               :boolean(1)
#  ruby               :boolean(1)
#  flash              :boolean(1)
#  sql                :boolean(1)
#  wordpress          :boolean(1)
#  javascript         :boolean(1)
#  rails_framework    :boolean(1)
#  app_page           :boolean(1)
#  ecommerce_page     :boolean(1)
#  design_page        :boolean(1)
#  logo_branding      :boolean(1)
#

class Client < ActiveRecord::Base  
  #callbacks
   after_update :save_assets

   #associations
   has_many :assets, :as => :attachable

   #validations
   validates_presence_of :title, :sub_title, :content

   #redcloth
   acts_as_textiled :content

   #named scopes
   named_scope :small_list, lambda { |limit| {:include => [:assets], :limit => limit}}
   named_scope :last_created, :order => "created_at DESC"
   named_scope :featured, :conditions => ["active = ?", true]
   named_scope :client_order, :order  => "list_order", :limit => 12
   named_scope :front_page, :conditions => ["featured = ?", true]
   named_scope :app_list, :conditions => ["app_page = ?", true]
   named_scope :ecommerce_list, :conditions => ["ecommerce_page = ?", true]
   named_scope :design_list, :conditions => ["design_page = ?", true]
   

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
   
   def functionality
      pf = []
        unless self.web_application.blank?
          pf << "<a href= /application-development>Web Application</a>"
        end
        unless self.content_management.blank?
          pf << "<a href= /application-development>Content Management</a>"
        end
        unless self.ecommerce.blank?
          pf << "<a href= /ecommerce-development>E-commerce Application</a>"
        end
        unless self.web_design.blank?
          pf << "<a href= /design-development>Web Design</a>"
        end
        unless self.logo_branding.blank?
          pf << "<a href= /design-development>Logo & Branding</a>"
        end
        return pf
   end
   
   def technology
     at = []
      if self.css
        at << "<a href= /application-development>CSS</a>"
      end
      if self.php
        at << "<a href= /design-development>PHP</a>"
      end
     if self.html
       at << "<a href= /application-development>HTML</a>"
     end
     if self.flash
       at << "<a href= /application-development>Flash</a>"
     end
     if self.ruby
       at << "<a href= /application-development>Ruby</a>"
     end
     if self.sql
       at << "<a href= /application-development>SQL</a>"
     end
     if self.wordpress
       at << "<a href= /application-development>Wordpress</a>"
     end
     if self.javascript
       at << "<a href= /application-development>Javascript</a>"
     end
     if self.rails_framework
       at << "<a href= /application-development>Rails Framework</a>"
     end
    return at
   end
  
  
end
