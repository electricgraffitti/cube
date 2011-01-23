class AddDesignPageImagesToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :design_page, :boolean
  end

  def self.down
    remove_column :clients, :design_page
  end
end
