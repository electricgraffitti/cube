class AddFeaturedToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :featured, :boolean
  end

  def self.down
    remove_column :clients, :featured
  end
end
