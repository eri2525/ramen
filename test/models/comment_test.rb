# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  comment    :text(65535)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  shop_id    :bigint           not null
#
# Indexes
#
#  index_comments_on_shop_id  (shop_id)
#
# Foreign Keys
#
#  fk_rails_...  (shop_id => shops.id)
#
require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
