class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :join, :unjoin]
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
    @trip.user = @current_user
    @trip.users.append(current_user)
    respond_to do |format|
      if @trip.save


        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render json: {message: 'Utworzono tripa.', name: @trip.user_id}, status: :ok }
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
    @trip = Trip.find_by(id: params[:trip])
    if current_user.trips.include?(@trip)
      @trip.destroy
      render json: {message: "usunięto tripa"}
    else
      @trip.errors.add(:permissions, 'brak uprawnień')
      render json: { errors: @trip.errors }, status: :unauthorized
    end
  end

  def join
    user = User.find_by(id: params[:user])
    if user
      unless @trip.joined?(user)
        @trip.users.append(user)
        send_notify('Zostałeś dodany do wycieczki!', @trip.id, user)
        # render json: { message: 'dodano użytkownika'}, status: :ok
      else
        @trip.errors.add(:username, 'użytkownik już należy do tego tripa')
        render json: { errors: @trip.errors }, status: :conflict
      end
    else
      @trip.errors.add(:username, 'nie ma takiego użytkownika')
      render json: { errors: @trip.errors }, status: :not_found
    end
  end

  def unjoin
    user = User.find_by(id: params[:user])
    if user
      if @trip.joined?(user)
        @trip.users.delete(user)
        render json: { message: 'wywalono ziomeczka.' }, status: :ok
      else
        @trip.errors.add(:username, 'użytkownik nie należy do tego tripa')
        render json: { errors: @trip.errors }, status: :conflict
      end
    else
      @trip.errors.add(:username, 'nie ma takiego użytkownika')
      render json: { errors: @trip.errors }, status: :not_found
    end
  end

  def addplace
    @trip = Trip.find(params[:id])
    if current_user.trips.include?(@trip)
      begin
        @placeid = Place.find(params[:place])
        unless @trip.places.include?(@placeid)

          @trip.places.append(@placeid)

          render json: { message: 'Dodano miejsce.'}, status: :ok
        else
          @trip.errors.add(:trip, 'to miejsce już zostało dodane')
          render json: { errors: @trip.errors }, status: :conflict
        end
      rescue Exception
        @trip.errors.add(:trip, 'nie ma takiego miejsca')
        render json: { errors: @trip.errors }, status: :not_found
      end

    else
      @trip.errors.add(:trip, 'nie należysz do tego tripa')
      render json: { errors: @trip.errors }, status: :unauthorized
    end
  end


  def removeplace
    @trip = Trip.find(params[:id])
    if current_user.trips.include?(@trip)
      begin
        @placeid = Place.find(params[:place])
        if @trip.places.include?(@placeid)
          @trip.places.delete(@placeid)
          render json: { message: 'usunieto miejsce.'}, status: :ok
        else
          @trip.errors.add(:trip, 'nie ma takiego miejsca')
          render json: { errors: @trip.errors }, status: :conflict
        end
      rescue Exception
        @trip.errors.add(:trip, 'takie miejsce nie istnieje')
        render json: { errors: @trip.errors }, status: :not_found
      end

    else
      @trip.errors.add(:trip, 'nie należysz do tego tripa')
      render json: { errors: @trip.errors }
    end
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
