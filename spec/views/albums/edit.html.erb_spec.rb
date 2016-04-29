require 'rails_helper'

RSpec.describe "albums/edit", type: :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :name => "MyString",
      :artist_name => "MyString"
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "input#album_name[name=?]", "album[name]"

      assert_select "input#album_artist_name[name=?]", "album[artist_name]"
    end
  end
end
