class CreateTrumpets < ActiveRecord::Migration[5.0]
  def change
    create_table :trumpets do |t|
      t.integer :number
      t.string :note
      t.string :value

      t.timestamps
    end
  end
end
