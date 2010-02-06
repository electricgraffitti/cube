class AddTagToCodeBlogs < ActiveRecord::Migration
  def self.up
    add_column :code_blogs, :tag, :string
  end

  def self.down
    remove_column :code_blogs, :tag
  end
end
