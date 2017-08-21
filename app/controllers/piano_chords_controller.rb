class PianoChordsController < ApplicationController
  before_action :set_piano_chord, only: [:show, :edit, :update, :destroy]

  # GET /piano_chords
  # GET /piano_chords.json
  def index

    @piano_chords = PianoChord.all
    # collect start note and chosen chord from view
    @get_start_note = ""
    @get_chord_value = ""

    if params[:start_note]
      if !(params[:start_note].split("").empty?)
        @get_start_note = params[:start_note]
      else
        @get_start_note = "C"
      end
    else
      @get_start_note = "C"
    end

    if params[:chord_value]
      if !(params[:chord_value].split("").empty?)
        @get_chord_value = params[:chord_value]
      else
        @get_chord_value = "Major"
      end
    else
      @get_chord_value = "Major"
    end

    # call the calculate chord method
    @main_chord = PianoChord.calculate_chord(@get_start_note, @get_chord_value)


    # obtain all note and chords that are sent to the view
    @all_notes = [ "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B"  ]
    @all_chords = []
    PianoChord.find_by_sql("SELECT name FROM piano_chords").each do |piano|
      @all_chords.push(piano.name)
    end

    @piano_notes = PianoNote.all
  end

  # GET /piano_chords/1
  # GET /piano_chords/1.json
  def show
  end

  # GET /piano_chords/new
  def new
    @piano_chord = PianoChord.new
  end

  # GET /piano_chords/1/edit
  def edit
  end

  # POST /piano_chords
  # POST /piano_chords.json
  def create
    @piano_chord = PianoChord.new(piano_chord_params)

    respond_to do |format|
      if @piano_chord.save
        format.html { redirect_to @piano_chord, notice: 'Piano chord was successfully created.' }
        format.json { render :show, status: :created, location: @piano_chord }
      else
        format.html { render :new }
        format.json { render json: @piano_chord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piano_chords/1
  # PATCH/PUT /piano_chords/1.json
  def update
    respond_to do |format|
      if @piano_chord.update(piano_chord_params)
        format.html { redirect_to @piano_chord, notice: 'Piano chord was successfully updated.' }
        format.json { render :show, status: :ok, location: @piano_chord }
      else
        format.html { render :edit }
        format.json { render json: @piano_chord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piano_chords/1
  # DELETE /piano_chords/1.json
  def destroy
    @piano_chord.destroy
    respond_to do |format|
      format.html { redirect_to piano_chords_url, notice: 'Piano chord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piano_chord
      @piano_chord = PianoChord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piano_chord_params
      params.require(:piano_chord).permit(:name, :interval, :number)
    end
end
