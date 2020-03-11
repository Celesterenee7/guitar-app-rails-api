class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :lyrics
      t.string :chords
      t.string :tabs

      t.timestamps
    end
  end
end
