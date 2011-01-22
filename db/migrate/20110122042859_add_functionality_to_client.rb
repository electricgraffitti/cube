class AddFunctionalityToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :content_management, :boolean
    add_column :clients, :ecommerce, :boolean
    add_column :clients, :web_application, :boolean
    add_column :clients, :web_design, :boolean
  end

  def self.down
    remove_column :clients, :web_design
    remove_column :clients, :web_application
    remove_column :clients, :ecommerce
    remove_column :clients, :content_management
  end
end
