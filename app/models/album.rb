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

class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs, dependent: :destroy
  validates_presence_of :name
end
