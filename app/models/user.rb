class User < ApplicationRecord
	validates :email, uniqueness: true, presence: true
	validates :image, presence: true
end
