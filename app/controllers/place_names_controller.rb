class PlaceNamesController < ApplicationController
  before_action :set_place_name, only: [:show, :edit, :update, :destroy]

  # GET /place_names
  # GET /place_names.json
  def index
    @place_names = PlaceName.all
  end

  # GET /place_names/1
  # GET /place_names/1.json
  def show
  end

  # GET /place_names/new
  def new
    @place_name = PlaceName.new
  end

  # GET /place_names/1/edit
  def edit
  end

  # POST /place_names
  # POST /place_names.json
  def create
    @place_name = PlaceName.new(place_name_params)

    respond_to do |format|
      if @place_name.save
        format.html { redirect_to @place_name, notice: 'Place name was successfully created.' }
        format.json { render :show, status: :created, location: @place_name }
      else
        format.html { render :new }
        format.json { render json: @place_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_names/1
  # PATCH/PUT /place_names/1.json
  def update
    respond_to do |format|
      if @place_name.update(place_name_params)
        format.html { redirect_to @place_name, notice: 'Place name was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_name }
      else
        format.html { render :edit }
        format.json { render json: @place_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_names/1
  # DELETE /place_names/1.json
  def destroy
    @place_name.destroy
    respond_to do |format|
      format.html { redirect_to place_names_url, notice: 'Place name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_name
      @place_name = PlaceName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_name_params
      params.require(:place_name).permit(:name)
    end
end
