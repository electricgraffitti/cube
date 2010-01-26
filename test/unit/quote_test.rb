# == Schema Information
#
# Table name: quotes
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  company    :string(255)
#  comment    :text
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
