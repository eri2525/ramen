# == Schema Information
#
# Table name: shops
#
#  id         :bigint           not null, primary key
#  access     :string(255)
#  address    :string(255)
#  image      :text(65535)
#  inquiry    :string(255)
#  latitude   :float(24)
#  longitude  :float(24)
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
