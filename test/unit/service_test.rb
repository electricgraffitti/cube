# == Schema Information
#
# Table name: services
#
#  id            :integer(4)      not null, primary key
#  title         :string(255)
#  sub_title     :string(255)
#  content       :text
#  created_at    :datetime
#  updated_at    :datetime
#  service_order :integer(4)
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
