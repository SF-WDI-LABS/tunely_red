# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  name         :string
#  release_date :date
#  artist_name  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :album do
    name "MyString"
    release_date "2016-04-28 17:05:59"
    artist_name "MyString"
  end

end
