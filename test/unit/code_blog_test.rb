# == Schema Information
#
# Table name: code_blogs
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  sub_title  :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  tag        :string(255)
#  permalink  :string(255)
#

require 'test_helper'

class CodeBlogTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
