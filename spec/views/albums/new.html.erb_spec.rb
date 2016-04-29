require 'rails_helper'

RSpec.describe "albums/new", type: :view do
  before(:each) do
    assign(:album, Album.new(
      :name => "MyString",
      :artist_name => "MyString"
    ))
  end

  it "renders new album form" do
    render

    assert_select "form[action=?][method=?]", albums_path, "post" do

      assert_select "input#album_name[name=?]", "album[name]"

      assert_select "input#album_artist_name[name=?]", "album[artist_name]"
    end
  end
end