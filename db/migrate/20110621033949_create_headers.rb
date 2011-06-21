class CreateHeaders < ActiveRecord::Migration
  def self.up
    create_table :headers do |t|
      t.string :page
      t.string :header

      t.timestamps
    end
  end

  def self.down
    drop_table :headers
  end
end
