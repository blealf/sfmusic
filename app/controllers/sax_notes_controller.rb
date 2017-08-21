class SaxNotesController < ApplicationController
  before_action :set_sax_note, only: [:show, :edit, :update, :destroy]

  # GET /sax_notes
  # GET /sax_notes.json
  def index
    @sax_notes = SaxNote.all.order(:number)
  end

  # GET /sax_notes/1
  # GET /sax_notes/1.json
  def show
  end

  # GET /sax_notes/new
  def new
    index
    @sax_note = SaxNote.new
  end

  # GET /sax_notes/1/edit
  def edit
    index
  end

  # POST /sax_notes
  # POST /sax_notes.json
  def create
    @sax_note = SaxNote.new(sax_note_params)

    respond_to do |format|
      if @sax_note.save
        format.html { redirect_to sax_notes_url, notice: 'Sax note was successfully created.' }
        format.json { render :show, status: :created, location: @sax_note }
      else
        format.html { render :new }
        format.json { render json: @sax_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sax_notes/1
  # PATCH/PUT /sax_notes/1.json
  def update
    respond_to do |format|
      if @sax_note.update(sax_note_params)
        format.html { redirect_to sax_notes_url, notice: 'Sax note was successfully updated.' }
        format.json { render :show, status: :ok, location: @sax_note }
      else
        format.html { render :edit }
        format.json { render json: @sax_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sax_notes/1
  # DELETE /sax_notes/1.json
  def destroy
    @sax_note.destroy
    respond_to do |format|
      format.html { redirect_to sax_notes_url, notice: 'Sax note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sax_note
      @sax_note = SaxNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sax_note_params
      params.require(:sax_note).permit(:note, :note_image, :number, :drive_image)
    end
end
