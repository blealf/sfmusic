class PianoChord < ApplicationRecord


	def self.calculate_chord(start_note, chord_value)
		initial = start_note.to_s
		ini_chord = chord_value.to_s

		notes = []
		

		PianoNote.find_by_sql("SELECT note FROM piano_notes ORDER BY number").each do |piano|
			notes.push(piano.note)
		end

		note_2 = notes + notes

		points = PianoChord.where("name LIKE ? ", "%#{ini_chord}%").take!.interval.split(",").map{|v| v.to_i}
		chord_points = points + points + points
		chords_worked = []


		a = notes.index(initial).to_i
		x = 0
		y = 0
		g = a
		complete = 0
		
		while x < 20
			chords_worked.push(note_2[g])
			# if initial == note_2[g]
			# 	complete += 1
			# end 
			x += chord_points[y].to_i
			g += chord_points[y].to_i
			y += 1

			if chords_worked.count == (points.count + 1) then
				break
			end
		end
		return chords_worked
	end
end
