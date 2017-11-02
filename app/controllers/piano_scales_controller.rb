class PianoScalesController < ApplicationController
  before_action :set_piano_scale, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :create, :show, :edit, :update, :destroy]
  
  # GET /piano_scales
  # GET /piano_scales.json
  def index
    @piano_scales = PianoScale.all
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
    @main_scale = PianoScale.calculate_scale(@get_start_note, @get_scale_value)


    # obtain all note and scales that are sent to the view
    @all_notes = [ "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B"  ]
    @all_scales = []
    Scale.find_by_sql("SELECT name FROM scales").each do |piano|
      @all_scales.push(piano.name)
    end




    @piano_notes = PianoNote.all
  end

  # GET /piano_scales/1
  # GET /piano_scales/1.json
  def show
  end

  # GET /piano_scales/new
  def new
    index
    @piano_scale = PianoScale.new
  end

  # GET /piano_scales/1/edit
  def edit
    index
  end

  # POST /piano_scales
  # POST /piano_scales.json
  def create
    @piano_scale = PianoScale.new(piano_scale_params)

    respond_to do |format|
      if @piano_scale.save
        format.html { redirect_to @piano_scale, notice: 'Piano scale was successfully created.' }
        format.json { render :show, status: :created, location: @piano_scale }
      else
        format.html { render :new }
        format.json { render json: @piano_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piano_scales/1
  # PATCH/PUT /piano_scales/1.json
  def update
    respond_to do |format|
      if @piano_scale.update(piano_scale_params)
        format.html { redirect_to @piano_scale, notice: 'Piano scale was successfully updated.' }
        format.json { render :show, status: :ok, location: @piano_scale }
      else
        format.html { render :edit }
        format.json { render json: @piano_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piano_scales/1
  # DELETE /piano_scales/1.json
  def destroy
    @piano_scale.destroy
    respond_to do |format|
      format.html { redirect_to piano_scales_url, notice: 'Piano scale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piano_scale
      @piano_scale = PianoScale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piano_scale_params
      params.require(:piano_scale).permit(:name, :interval)
    end
end
