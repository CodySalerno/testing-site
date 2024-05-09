# == Schema Information
#
# Table name: prebuilts
#
#  id           :bigint           not null, primary key
#  color        :string
#  description  :string
#  manufacturer :string
#  name         :string
#  price        :integer
#  size         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Prebuilt < ApplicationRecord

  has_many(
    :reviews,
    class_name:  'Review',
    foreign_key: 'prebuilt_id',
    inverse_of:  :prebuilt,
    dependent:   :destroy
  )

end
