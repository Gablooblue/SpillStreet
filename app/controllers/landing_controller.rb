class LandingController < ApplicationController
  def index
    @rants = Rant.all.order("created_at DESC").limit(6)
  end
end
