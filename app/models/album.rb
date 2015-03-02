class Album < ActiveRecord::Base
	belongs_to :genre
	belongs_to :artist
	has_many :songs

	validates :title, presence: true
	validates :title, uniqueness: true

	mount_uploader :cover, CoverUploader
end
