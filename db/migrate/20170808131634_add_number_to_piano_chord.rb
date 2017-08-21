class AddNumberToPianoChord < ActiveRecord::Migration[5.0]
  def change
    add_column :piano_chords, :number, :integer
  end
end
