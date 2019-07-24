class Playlist < ApplicationRecord
  belongs_to :creator

  has_many :playlist_watchers

  has_many :playlist_videos
  has_many :videos, through: :playlist_videos

  has_many :suggestions

  belongs_to :creator, class_name: 'YoutubeAccount'

  validates :title, presence: true
  validates :url, presence: true
end
