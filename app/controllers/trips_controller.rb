class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy, :join, :unjoin]
  skip_before_action :verify_authenticity_token
  before_action :require_token



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
        @trip.users.append(current_user)
        @trip.user = @current_user
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render json: {message: 'Utworzono tripa.', name: @trip.name} }
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
    if current_user.trips.include?(@trip)
      @trip.destroy
      render json: {message: "Usunięto tripa."}
    else
      render json: {message: 'Brak uprawnień.'}
    end
  end

  def join
    user = User.find_by(username: params[:username])
    if user
      unless @trip.joined?(user)
        @trip.users.append(user)
        render json: { message: 'Dodano ziomeczka.', username: params[:username] }
      else
        @trip.errors.add(:username, 'nie ma takiego użytkownika')
        render json: { errors: @trip.errors }, status: :not_found
      end
    else
      @trip.errors.add(:username, 'nie ma takiego użytkownika')
      render json: { errors: @trip.errors }, status: :not_found
    end
  end

  def unjoin
    user = User.find_by(username: params[:username])
    if user
      if @trip.joined?(user)
        @trip.users.delete(user)
        render json: { message: 'Wywalono ziomeczka.', username: params[:username] }
      else
        render json: { message: 'Ziomeczek nie zapisał sie na tego tripa.', username: params[:username] }
      end
    else
      render json: { message: 'Nie ma takiego ziomeczka.' }
    end
  end

  def addplace
    @trip = Trip.find(params[:id])
    if current_user.trips.include?(@trip)
      begin
        @placeid = Place.find(params[:place])
        unless @trip.places.include?(@placeid)
          @trip.places.append(@placeid)
          render json: { message: 'Dodano miejsce.'}
        else
          render json: { message: 'Już jest to miejsce.'}
        end
      rescue Exception
        render json: { message: 'Nie ma takiego miejsca.'}
      end

    else
      render json: { message: 'Nie należysz do tego tripa.'}
    end
    #render json: { message: 'cos tu nie gra.'}
  end


  def removeplace
    @trip = Trip.find(params[:id])
    if current_user.trips.include?(@trip)
      begin
        @placeid = Place.find(params[:place])
        if @trip.places.include?(@placeid)
          @trip.places.delete(@placeid)
          render json: { message: 'Usunieto miejsce.'}
        else
          render json: { message: 'Nie było takiego miejsca.'}
        end
      rescue Exception
        render json: { message: 'Nie ma takiego miejsca.'}
      end

    else
      render json: { message: 'Nie należysz do tego tripa.'}
    end
    #render json: { message: 'cos tu nie gra.'}
  end

  def places
    @current_trip = Trip.find(params[:id])

  end

  def posts
    @current_trip = Trip.find(params[:id])
    render :posts
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:name, :start_date, :end_date, :town_id)
    end
end
