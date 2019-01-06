class CreateSpeakers < ActiveRecord::Migration[5.1]
  def change
    create_table :speakers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :twitter_handle
      t.text :talk_title
      t.text :abstract
      t.string :talk_level
      t.string :photo
      t.text :bio

      t.timestamps
    end
  end
end
