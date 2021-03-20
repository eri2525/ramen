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
class Shop < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_many :shop_tag_relations, dependent: :delete_all
  has_many :tags, through: :shop_tag_relations
  has_many_attached :images
  
  validates :name, presence: true, length: { maximum: 20 }
  validates :text, length: { maximum: 500 }
  # validates :image,

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
