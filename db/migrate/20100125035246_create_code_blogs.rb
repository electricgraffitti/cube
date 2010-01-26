class CreateCodeBlogs < ActiveRecord::Migration
  def self.up
    create_table :code_blogs do |t|
      t.string :title
      t.string :sub_title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :code_blogs
  end
end
