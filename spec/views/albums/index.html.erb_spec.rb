require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      FactoryGirl.create(:album),
      FactoryGirl.create(:album)
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "span.album-name", :text => "Amazing album".to_s, :count => 2
  end
end
