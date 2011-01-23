class AddAppPageImagesToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :app_page, :boolean
  end

  def self.down
    remove_column :clients, :app_page
  end
end
