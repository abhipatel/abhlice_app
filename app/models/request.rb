class Request < ActiveRecord::Base
  validates :details, presence: true
end
