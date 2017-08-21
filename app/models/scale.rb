class Scale < ApplicationRecord

	
	#def self.actual_scale(start_note, scale_value)
	#	[start_note, scale_value]
	#end

	def self.calculate_scale(start_note, scale_value)

		initial = start_note.to_s
		ini_scale = scale_value.to_s

=begin
		initial = ""
		ini_scale = ""

		if start_note && scale_value
			
			if !(start_note.split("").empty?)
				initial = start_note.to_s
				ini_scale = scale_value
			else
				initial = "C"
				ini_scale = "major"
			end
		else
			initial = "C"
			ini_scale = "major"
		end
=end

		notes = []
		# Get all notes into an array
		SaxNote.find_by_sql("SELECT note FROM sax_notes ORDER BY number").each do |sax|
			notes.push(sax.note)
		end

		start_note1 = initial + "1"
		#scale_points = [2,2,1,2,2,2,1,2,2,1,2,2,2,1,2,2,1,2,2,2,1,2,2,1,2,2,2,1,2,2,1,2,2,2,1]
		points = Scale.where("name LIKE ? ", "%#{ini_scale}%").take!.value.split(",").map{|v| v.to_i}
		scale_points = points + points + points + points + points
		scales_worked = []

		x = 0
		y = 0
		a = notes.index(start_note1).to_i
		g = a
		
		while x < (notes.count - a)
			scales_worked.push(notes[g])
			x += scale_points[y].to_i # increases by the number obtained from scale_value[y]
			g += scale_points[y].to_i
			y += 1 # increases the y value to pick the next number in the array
		end

		return scales_worked

	end

end

