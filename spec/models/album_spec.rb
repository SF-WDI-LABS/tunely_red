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

require 'rails_helper'

RSpec.describe Album, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:artist_name) }
end
