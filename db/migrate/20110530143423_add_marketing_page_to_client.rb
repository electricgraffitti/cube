class AddMarketingPageToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :marketing_page, :boolean
  end

  def self.down
    remove_column :clients, :marketing_page
  end
end
