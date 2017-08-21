class PianoScale < ApplicationRecord

	def self.calculate_scale(start_note, scale_value)
		initial = start_note.to_s
		ini_scale = scale_value.to_s

		notes = []
		

		PianoNote.find_by_sql("SELECT note FROM piano_notes ORDER BY number").each do |piano|
			notes.push(piano.note)
		end

		note_2 = notes + notes

		points = Scale.where("name LIKE ? ", "%#{ini_scale}%").take!.value.split(",").map{|v| v.to_i}
		scale_points = points + points + points
		scales_worked = []


		a = notes.index(initial).to_i
		x = 0
		y = 0
		g = a
		complete = 0
		
		while x < scale_points.count
			scales_worked.push(note_2[g])
			if initial == note_2[g]
				complete += 1
			end 
			x += scale_points[y].to_i
			g += scale_points[y].to_i
			y += 1

			if complete > 1 then
				break
			end
		end
		return scales_worked
	end
end
