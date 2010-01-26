class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.string :name
      t.string :company
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
