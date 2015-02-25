class Album < ActiveRecord::Base
	belongs_to :genre
	belongs_to :artist
	has_many :songs

	validates :name, presence: true
	validates :name, uniqueness: true
end
