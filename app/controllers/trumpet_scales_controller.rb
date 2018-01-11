class TrumpetScalesController < ApplicationController
  def index
  	
  	# collect start note and chosen scale from view
  	@get_start_note = ""
  	@get_scale_value = ""

  	if params[:start_note]
  		if !(params[:start_note].split("").empty?)
  			@get_start_note = params[:start_note]
  		else
  			@get_start_note = "C"
  		end
  	else
  		@get_start_note = "C"
  	end

  	if params[:scale_value]
  		if !(params[:scale_value].split("").empty?)
  			@get_scale_value = params[:scale_value]
  		else
  			@get_scale_value = "Major"
  		end
  	else
  		@get_scale_value = "Major"
  	end

  	# call the calculate scale method
  	@main_scale = Scale.calculate_scale(@get_start_note, @get_scale_value)


  	# obtain all note and scales that are sent to the view
  	@all_notes = [ "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B"  ]
  	@all_scales = []
	 Scale.find_by_sql("SELECT name FROM scales").each do |trumpet|
		  @all_scales.push(trumpet.name)
	 end

   all_notes2 = @all_notes + @all_notes
   for_p = @all_notes.index(@get_start_note)
   @pianoscale = all_notes2[for_p - 2 ]

  end
end
