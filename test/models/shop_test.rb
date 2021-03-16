# == Schema Information
#
# Table name: shops
#
#  id         :bigint           not null, primary key
#  image      :text(65535)
#  name       :string(255)
#  text       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
