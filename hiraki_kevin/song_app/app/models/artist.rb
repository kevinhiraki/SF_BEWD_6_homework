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

class Artist < ActiveRecord::Base
	has_many :songs
end
