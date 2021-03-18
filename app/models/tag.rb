# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  tag        :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord
  has_many :shop_tag_relations, dependent: :delete_all
  has_many :shops, through: :shop_tag_relations
end
