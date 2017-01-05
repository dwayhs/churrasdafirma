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

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
