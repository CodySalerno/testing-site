# == Schema Information
#
# Table name: customs
#
#  id                    :bigint           not null, primary key
#  built_in_game         :string
#  color                 :string
#  crayon_walls          :boolean
#  entertainment_tablets :boolean
#  manufacturer          :string
#  price                 :integer
#  size                  :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Custom < ApplicationRecord
  validates :color, :size, :manufacturer, :price, :built_in_game, presence: true
  validates :crayon_walls, :entertainment_tablets, inclusion: { in: [true, false] }
end
