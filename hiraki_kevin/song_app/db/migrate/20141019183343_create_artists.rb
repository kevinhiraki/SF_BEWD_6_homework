class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.text :award_log
      t.string :artist_image

      t.timestamps
    end
  end
end
