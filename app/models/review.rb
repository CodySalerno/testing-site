# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  comment     :text
#  rating      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  prebuilt_id :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_reviews_on_prebuilt_id  (prebuilt_id)
#  index_reviews_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (prebuilt_id => prebuilts.id)
#  fk_rails_...  (user_id => users.id)
#
class Review < ApplicationRecord

  # belongs_to(
  #   :prebuilt,
  #   class_name:  'Prebuilt',
  #   foreign_key: 'prebuilt_id',
  #   inverse_of:  :reviews
  # )

  belongs_to(
    :creator,
    class_name:  'User',
    foreign_key: 'user_id',
    inverse_of:  :reviews
  )

end
