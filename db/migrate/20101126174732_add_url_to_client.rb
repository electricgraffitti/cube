class AddUrlToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :url, :string
  end

  def self.down
    remove_column :clients, :url
  end
end
