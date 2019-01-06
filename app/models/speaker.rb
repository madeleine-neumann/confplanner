class Speaker < ApplicationRecord
  mount_uploader :photo, SpeakerPhotoUploader
  has_one :speaker_travel

  # only for rails admin to display name instead of id for selection
  def name
    firstname + " " + lastname
  end
end
