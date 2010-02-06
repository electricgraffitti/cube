class AddServiceOrderToServices < ActiveRecord::Migration
  def self.up
    add_column :services, :service_order, :integer
  end

  def self.down
    remove_column :services, :service_order
  end
end
