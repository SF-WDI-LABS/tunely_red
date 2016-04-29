# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  name         :string
#  release_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  artist_id    :integer
#

FactoryGirl.define do
  factory :album do
    name "MyString"
    release_date "2016-04-28 17:05:59"
    artist_name "MyString"
  end

end
