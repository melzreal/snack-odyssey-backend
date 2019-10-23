class User < ApplicationRecord
	has_secure_password
	has_many :travels
	has_many :countries, through: :travels
	has_many :posts, through: :blog
end
