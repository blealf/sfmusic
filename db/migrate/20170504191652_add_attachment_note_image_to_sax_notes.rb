class AddAttachmentNoteImageToSaxNotes < ActiveRecord::Migration
  def self.up
    change_table :sax_notes do |t|
      t.attachment :note_image
    end
  end

  def self.down
    remove_attachment :sax_notes, :note_image
  end
end
