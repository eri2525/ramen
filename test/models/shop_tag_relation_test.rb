# == Schema Information
#
# Table name: shop_tag_relations
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  shop_id    :bigint           not null
#  tag_id     :bigint           not null
#
# Indexes
#
#  index_shop_tag_relations_on_shop_id  (shop_id)
#  index_shop_tag_relations_on_tag_id   (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (shop_id => shops.id)
#  fk_rails_...  (tag_id => tags.id)
#
require 'test_helper'

class ShopTagRelationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
