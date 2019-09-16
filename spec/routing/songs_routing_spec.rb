require "rails_helper"

RSpec.describe SongsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/songs").to route_to("songs#index")
    end

    it "routes to #new" do
      expect(:get => "/songs/new").to route_to("songs#new")
    end

    it "routes to #create" do
      expect(:post => "/songs").to route_to("songs#create")
    end
  end
end
