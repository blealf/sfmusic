class CreateSaxNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :sax_notes do |t|
      t.string :note

      t.timestamps
    end
  end
end
