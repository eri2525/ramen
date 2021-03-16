class Shop < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  validates :text, length: { maximum: 500 }
  # validates :image,
end
