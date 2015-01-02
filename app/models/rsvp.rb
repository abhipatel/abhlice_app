class Rsvp < ActiveRecord::Base
  validates :names, presence: true
  validates :is_attending, presence: true
end
