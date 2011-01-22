class AddTechnologyToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :css, :boolean
    add_column :clients, :php, :boolean
    add_column :clients, :html, :boolean
    add_column :clients, :ruby, :boolean
    add_column :clients, :flash, :boolean
    add_column :clients, :sql, :boolean
    add_column :clients, :wordpress, :boolean
    add_column :clients, :javascript, :boolean
    add_column :clients, :rails_framework, :boolean
  end

  def self.down
    remove_column :clients, :rails_framework
    remove_column :clients, :javascript
    remove_column :clients, :wordpress
    remove_column :clients, :sql
    remove_column :clients, :flash
    remove_column :clients, :ruby
    remove_column :clients, :html
    remove_column :clients, :php
    remove_column :clients, :css
  end
end
