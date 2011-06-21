# == Schema Information
#
# Table name: clients
#
#  id                 :integer(4)      not null, primary key
#  title              :string(255)
#  sub_title          :string(255)
#  content            :text
#  created_at         :datetime
#  updated_at         :datetime
#  url                :string(255)
#  active             :boolean(1)
#  list_order         :integer(4)
#  featured           :boolean(1)
#  content_management :boolean(1)
#  ecommerce          :boolean(1)
#  web_application    :boolean(1)
#  web_design         :boolean(1)
#  css                :boolean(1)
#  php                :boolean(1)
#  html               :boolean(1)
#  ruby               :boolean(1)
#  flash              :boolean(1)
#  sql                :boolean(1)
#  wordpress          :boolean(1)
#  javascript         :boolean(1)
#  rails_framework    :boolean(1)
#  app_page           :boolean(1)
#  ecommerce_page     :boolean(1)
#  design_page        :boolean(1)
#  logo_branding      :boolean(1)
#  marketing          :boolean(1)
#  marketing_page     :boolean(1)
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
