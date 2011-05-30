class AddMarketingToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :marketing, :boolean
  end

  def self.down
    remove_column :clients, :marketing
  end
end
