class Guitar < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :price, presence: true
end


# /users/:user_id/guitars/new

# /guitars/new, require: :user_id, as: new_guitar

# new_guitar_path(@user.id)