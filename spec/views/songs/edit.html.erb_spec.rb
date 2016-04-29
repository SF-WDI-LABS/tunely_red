require 'rails_helper'

RSpec.describe "songs/edit", type: :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :name => "MyString",
      :track_number => 1,
      :album => nil
    ))
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(@song), "post" do

      assert_select "input#song_name[name=?]", "song[name]"

      assert_select "input#song_track_number[name=?]", "song[track_number]"

      assert_select "input#song_album_id[name=?]", "song[album_id]"
    end
  end
end
