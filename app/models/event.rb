# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  when        :datetime
#  description :text
#  where       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string
#

class Event < ActiveRecord::Base
  validates :where, presence: true
end
