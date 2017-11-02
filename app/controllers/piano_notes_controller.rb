class PianoNotesController < ApplicationController
  before_action :set_piano_note, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  # GET /piano_notes
  # GET /piano_notes.json
  def index
    @piano_notes = PianoNote.all
  end

  # GET /piano_notes/1
  # GET /piano_notes/1.json
  def show
  end

  # GET /piano_notes/new
  def new
    index
    @piano_note = PianoNote.new
  end

  # GET /piano_notes/1/edit
  def edit
    index
    set_piano_note
  end

  # POST /piano_notes
  # POST /piano_notes.json
  def create
    @piano_note = PianoNote.new(piano_note_params)

    respond_to do |format|
      if @piano_note.save
        format.html { redirect_to new_piano_note_url, notice: 'Piano note was successfully created.' }
        format.json { render :show, status: :created, location: @piano_note }
      else
        format.html { render :new }
        format.json { render json: @piano_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piano_notes/1
  # PATCH/PUT /piano_notes/1.json
  def update
    set_piano_note
    respond_to do |format|
      if @piano_note.update(piano_note_params)
        format.html { redirect_to new_piano_note_url, notice: 'Piano note was successfully updated.' }
        format.json { render :show, status: :ok, location: @piano_note }
      else
        format.html { render :edit }
        format.json { render json: @piano_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piano_notes/1
  # DELETE /piano_notes/1.json
  def destroy
    set_piano_note
    @piano_note.destroy
    respond_to do |format|
      format.html { redirect_to piano_notes_url, notice: 'Piano note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piano_note
      @piano_note = PianoNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piano_note_params
      params.require(:piano_note).permit(:note, :number, :key, :alt_note)
    end
end
