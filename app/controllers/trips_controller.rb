class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy, :join, :unjoin]




  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end



  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def join
    unless current_user.joined?(@trip)
      current_user.trips.append(@trip)
    end
    redirect_to @trip
  end

  def unjoin
    if current_user.joined?(@trip)
      @trip.users.delete(current_user)
    end
    redirect_to @trip
  end

  def addplace
    @place_to_add = Place.find(params[:place_id_to_add])
    @trip = Trip.find(params[:id])
    @trip.places.append(@place_to_add)
    redirect_to @trip
  end

  def remove
    @remove_id = Place.find(params[:remove_id])
    @trip = Trip.find(params[:id])
    @trip.places.delete(@remove_id)
    redirect_to @trip
  end

  def places
    @current_trip = Trip.find_by(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:start_date, :end_date, :town_id)
    end
end
