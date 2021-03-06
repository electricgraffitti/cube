class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :title
      t.string :sub_title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
