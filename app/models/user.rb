class User < ApplicationRecord
    has_many :guitars, dependent: :destroy
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 3 }
end
 