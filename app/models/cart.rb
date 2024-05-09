# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cart < ApplicationRecord
  has_many :items

  def add_item(prebuilt_id)
    items.find_or_create_by(prebuilt_id: prebuilt_id)
  end
end
