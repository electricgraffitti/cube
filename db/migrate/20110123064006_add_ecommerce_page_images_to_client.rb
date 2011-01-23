class AddEcommercePageImagesToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :ecommerce_page, :boolean
  end

  def self.down
    remove_column :clients, :ecommerce_page
  end
end
