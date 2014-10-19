# == Schema Information
#
# Table name: artists
#
#  id           :integer          not null, primary key
#  first_name   :string(255)
#  last_name    :string(255)
#  description  :text
#  award_log    :text
#  artist_image :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
