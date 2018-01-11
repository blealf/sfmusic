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

		back = count_back(start_note, scale_value, SaxNote, "sax_notes")
		return  back + scales_worked

	end


	def self.count_back(start_n, scale_n, model, model_small)
		work_note = start_n + "1"
		work_scale = Scale.where("name LIKE ? ", "%#{scale_n.to_s}%").take!.value.split(",").map{|v| v.to_i}


		work_notes = []
		

		model.find_by_sql("SELECT note, number FROM #{model_small} ORDER BY number").each do |model_note|
			work_notes.push(model_note.note)	
		end

		start_point = model.find_by(note: work_note).number - 1
		g = 0
		reverse_scale = work_scale.reverse
		back_scale = []


		while start_point >= 0
			start_point -= reverse_scale[g].to_i
			g += 1

			unless start_point <= -1 
				back_scale.unshift(work_notes[start_point])
			end
		end


		return back_scale
	end



	# def self.count_back(start_n, scale_n, model, model_small)
	# 	work_note = start_n + "1"
	# 	work_scale = Scale.where("name LIKE ? ", "%#{scale_n.to_s}%").take!.value.split(",").map{|v| v.to_i}
	# 	work_scales = work_scale + work_scale


	# 	work_notes = []
	# 	start_point = model.find_by(note: work_note).number
	# 	g = 0

	# 	model.find_by_sql("SELECT note, number FROM #{model_small} ORDER BY number").each do |model_note|

	# 		if (start_point == model_note.number)
	# 			work_notes.push(model_note.note)
	# 			start_point += work_scales[g].to_i
	# 			g += 1
	# 		end
			
	# 	end


	# 	return work_notes
	# end

end

