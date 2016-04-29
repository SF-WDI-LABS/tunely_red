require 'rails_helper'

RSpec.describe "songs/new", type: :view do
  before(:each) do
    @album = FactoryGirl.create(:album)
    assign(:song, Song.new(
      :name => "MyString",
      :track_number => 1,
      :album => @album
    ))
  end

  it "renders new song form" do
    render

    assert_select "form[action=?][method=?]", album_songs_path(@album), "post" do

      assert_select "input#song_name[name=?]", "song[name]"

      assert_select "input#song_track_number[name=?]", "song[track_number]"

    end
  end
end
