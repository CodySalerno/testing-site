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
require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
