class Event < ActiveRecord::Base
  validates :where, presence: true
end
