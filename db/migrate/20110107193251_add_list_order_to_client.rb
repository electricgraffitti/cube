class AddListOrderToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :list_order, :integer
  end

  def self.down
    remove_column :clients, :list_order
  end
end
