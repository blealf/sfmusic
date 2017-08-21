class CreatePianoNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :piano_notes do |t|
      t.string :note
      t.integer :number
      t.string :key

      t.timestamps
    end
  end
end
