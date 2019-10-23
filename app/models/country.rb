class Country < ApplicationRecord
	has_many :places
	has_many :trips
	has_many :users, through: :trips
end
