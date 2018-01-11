class TrumpetsController < ApplicationController
  before_action :set_trumpet, only: [:show, :edit, :update, :destroy]

  # GET /trumpets
  # GET /trumpets.json

  def index
    @trumpets = Trumpet.all.order(:number)
  end

  # GET /trumpets/1
  # GET /trumpets/1.json
  def show
  end

  # GET /trumpets/new
  def new
    index
    @trumpet = Trumpet.new
  end

  # GET /trumpets/1/edit
  def edit
    index
  end

  # POST /trumpets
  # POST /trumpets.json
  def create
    @trumpet = Trumpet.new(trumpet_params)

    respond_to do |format|
      if @trumpet.save
        format.html { redirect_to new_trumpet_url, notice: 'Trumpet was successfully created.' }
        format.json { render :show, status: :created, location: @trumpet }
      else
        format.html { render :new }
        format.json { render json: @trumpet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trumpets/1
  # PATCH/PUT /trumpets/1.json
  def update
    respond_to do |format|
      if @trumpet.update(trumpet_params)
        format.html { redirect_to new_trumpet_url, notice: 'Trumpet was successfully updated.' }
        format.json { render :show, status: :ok, location: @trumpet }
      else
        format.html { render :edit }
        format.json { render json: @trumpet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trumpets/1
  # DELETE /trumpets/1.json
  def destroy
    @trumpet.destroy
    respond_to do |format|
      format.html { redirect_to trumpets_url, notice: 'Trumpet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trumpet
      @trumpet = Trumpet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trumpet_params
      params.require(:trumpet).permit(:number, :note, :value)
    end
end
