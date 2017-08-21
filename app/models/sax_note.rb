class SaxNote < ApplicationRecord
	has_attached_file :note_image #styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :note_image, content_type: /\Aimage\/.*\z/
end
