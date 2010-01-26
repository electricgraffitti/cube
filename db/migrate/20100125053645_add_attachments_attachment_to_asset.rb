class AddAttachmentsAttachmentToAsset < ActiveRecord::Migration
  def self.up
    add_column :assets, :attachment_file_name, :string
    add_column :assets, :attachment_content_type, :string
    add_column :assets, :attachment_file_size, :integer
    add_column :assets, :attachment_updated_at, :datetime
    add_column :assets, :attachable_id, :integer
    add_column :assets, :attachable_type, :string
  end

  def self.down
    remove_column :assets, :attachment_file_name
    remove_column :assets, :attachment_content_type
    remove_column :assets, :attachment_file_size
    remove_column :assets, :attachment_updated_at
    remove_column :assets, :attachable_id
    remove_column :assets, :attachable_type
  end
end
