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
require "test_helper"

class CustomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
