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
class Shop < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_many :shop_tag_relations, dependent: :delete_all
  has_many :tags, through: :shop_tag_relations
  has_one_attached :image
  
  validates :name, presence: true, length: { maximum: 10 }
  validates :text, length: { maximum: 500 }
  # validates :image,
end
