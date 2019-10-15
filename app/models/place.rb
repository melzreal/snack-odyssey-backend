class Place < ApplicationRecord
	belongs_to :country
	has_many :snacks
end
