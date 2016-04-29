# == Schema Information
#
# Table name: songs
#
#  id           :integer          not null, primary key
#  name         :string
#  track_number :integer
#  album_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :song do
    name "Rain"
    track_number 1
    album
  end

end
