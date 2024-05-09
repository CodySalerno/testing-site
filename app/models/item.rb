# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  id_of_jet  :string
#  item_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
end
