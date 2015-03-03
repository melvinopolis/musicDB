class Genre < ActiveRecord::Base
	has_many :artists
	has_many :albums
	has_many :songs

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {minimum: 3}

	extend FriendlyId
  	friendly_id :name, use: :slugged
end
