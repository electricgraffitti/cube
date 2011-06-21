# == Schema Information
#
# Table name: headers
#
#  id         :integer(4)      not null, primary key
#  page       :string(255)
#  header     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class HeaderTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
