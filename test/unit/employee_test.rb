# == Schema Information
#
# Table name: employees
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
