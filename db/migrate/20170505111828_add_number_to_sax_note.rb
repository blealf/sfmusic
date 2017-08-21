class AddNumberToSaxNote < ActiveRecord::Migration[5.0]
  def change
    add_column :sax_notes, :number, :integer
  end
end
