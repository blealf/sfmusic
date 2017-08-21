class AddDriveImageToSaxNote < ActiveRecord::Migration[5.0]
  def change
    add_column :sax_notes, :drive_image, :string
  end
end
