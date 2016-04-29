require 'rails_helper'

RSpec.describe "songs/new", type: :view do
  before(:each) do
    assign(:song, Song.new(
      :name => "MyString",
      :track_number => 1,
      :album => nil
    ))
  end

  it "renders new song form" do
    render

    assert_select "form[action=?][method=?]", songs_path, "post" do

      assert_select "input#song_name[name=?]", "song[name]"

      assert_select "input#song_track_number[name=?]", "song[track_number]"

    end
  end
end
