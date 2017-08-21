class AddAltNoteToPianoNote < ActiveRecord::Migration[5.0]
  def change
    add_column :piano_notes, :alt_note, :string
  end
end
