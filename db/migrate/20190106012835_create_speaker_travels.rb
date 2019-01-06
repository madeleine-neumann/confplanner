class CreateSpeakerTravels < ActiveRecord::Migration[5.1]
  def change
    create_table :speaker_travels do |t|
      t.string :comes_from
      t.string :goes_back_to
      t.date :journey_start
      t.date :went_back
      t.integer :speaker_id

      t.timestamps
    end
  end
end
