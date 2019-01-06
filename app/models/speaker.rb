class Speaker < ApplicationRecord
  mount_uploader :photo, SpeakerPhotoUploader
end
