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
class Comment < ApplicationRecord
  belongs_to :shop

  validates :name, presence: true, length: { maximum: 10 }
  validates :comment, presence: true, length: { maximum: 300 }
end
