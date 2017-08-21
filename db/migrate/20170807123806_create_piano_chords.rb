class CreatePianoChords < ActiveRecord::Migration[5.0]
  def change
    create_table :piano_chords do |t|
      t.string :name
      t.string :interval

      t.timestamps
    end
  end
end
