class SpeakerTravelsController < ApplicationController
  def index
    @travels = SpeakerTravel.all
  end

end
