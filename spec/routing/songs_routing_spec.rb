require "rails_helper"

RSpec.describe SongsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/albums/1/songs").to route_to("songs#index", album_id: '1')
    end

    it "routes to #new" do
      expect(:get => "/albums/22/songs/new").to route_to("songs#new", album_id: '22')
    end

    it "routes to #show" do
      expect(:get => "/albums/432/songs/1").to route_to("songs#show", :id => "1", album_id: '432')
    end

    it "routes to #edit" do
      expect(:get => "/albums/33/songs/1/edit").to route_to("songs#edit", :id => "1", album_id: '33')
    end

    it "routes to #create" do
      expect(:post => "/albums/32/songs").to route_to("songs#create", album_id: '32')
    end

    it "routes to #update via PUT" do
      expect(:put => "/albums/90/songs/1").to route_to("songs#update", :id => "1", album_id: '90')
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/albums/94/songs/1").to route_to("songs#update", :id => "1", album_id: '94')
    end

    it "routes to #destroy" do
      expect(:delete => "/albums/97/songs/1").to route_to("songs#destroy", :id => "1", album_id: '97')
    end

  end
end
