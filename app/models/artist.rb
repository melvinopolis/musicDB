class Artist < ActiveRecord::Base
	belongs_to :genre
	has_many :albums
	has_many :songs

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {minimum: 3}
	validates :bio, length: {maximum: 1000}
end
