# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  comment    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  shop_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_comments_on_shop_id  (shop_id)
#  index_comments_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (shop_id => shops.id)
#  fk_rails_...  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :shop
  belongs_to :user

  validates :comment, presence: true, length: { maximum: 300 }
end
