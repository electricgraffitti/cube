# == Schema Information
#
# Table name: assets
#
#  id                      :integer(4)      not null, primary key
#  created_at              :datetime
#  updated_at              :datetime
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer(4)
#  attachment_updated_at   :datetime
#  attachable_id           :integer(4)
#  attachable_type         :string(255)
#

require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
