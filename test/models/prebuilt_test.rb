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
require "test_helper"

class PrebuiltTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
