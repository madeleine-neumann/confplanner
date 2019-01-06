class SpeakerTravel < ApplicationRecord
  belongs_to :speaker
  belongs_to :hotel
end
