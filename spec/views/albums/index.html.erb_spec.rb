require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :name => "Sample Album Name",
        :artist_name => "Artist Name"
      ),
      Album.create!(
        :name => "Sample Album Name",
        :artist_name => "Artist Name"
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "span.album-name", :text => "Sample Album Name".to_s, :count => 2
    assert_select "span.artist-name", :text => "Artist Name".to_s, :count => 2
  end
end
