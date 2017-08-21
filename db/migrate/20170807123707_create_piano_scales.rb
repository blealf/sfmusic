class CreatePianoScales < ActiveRecord::Migration[5.0]
  def change
    create_table :piano_scales do |t|
      t.string :name
      t.string :interval

      t.timestamps
    end
  end
end
