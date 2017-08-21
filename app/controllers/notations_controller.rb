class NotationsController < ApplicationController

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
	 Scale.find_by_sql("SELECT name FROM scales").each do |sax|
		  @all_scales.push(sax.name)
	 end
  end
=begin
  def idf
    
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
    @all_notes = [ "Ab", "A", "Bb", "B", "C", "C#", "D", "Eb", "E", "F", "F#", "G" ]
    @all_scales = []
    Scale.find_by_sql("SELECT name FROM scales").each do |sax|
      @all_scales.push(sax.name)
    end
  end
=end
end