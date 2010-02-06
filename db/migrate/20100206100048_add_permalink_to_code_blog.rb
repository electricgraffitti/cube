class AddPermalinkToCodeBlog < ActiveRecord::Migration
  def self.up
    add_column :code_blogs, :permalink, :string
  end

  def self.down
    remove_column :code_blogs, :permalink
  end
end
