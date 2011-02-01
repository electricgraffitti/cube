class AddLogoBrandingToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :logo_branding, :boolean
  end

  def self.down
    remove_column :clients, :logo_branding
  end
end
