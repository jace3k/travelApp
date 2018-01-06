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
    @trip.destroy
    respond_to do |format|
      if current_user.trips.include?(@trip) && trip
        format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
        format.json { render json: {message: "Usunięto tripa."} }
      else
        format.html { redirect_to trips_url, notice: 'Brak uprawnien.' }
        format.json { render json: {message: 'kupka.'} }
      end
    end
  end

  def join
    respond_to do |format|
      user = User.find_by(username: params[:user][:username])
      if user
        format.html {
          unless @trip.joined?(user)
            @trip.users.append(user)
          end
          redirect_to @trip, notice: 'Dodano ziomeczka.'
        }
        format.json {
          unless @trip.joined?(user)
            @trip.users.append(user)
            render json: { message: 'Dodano ziomeczka.', username: params[:trip][:username] }
          else
            render json: { message: 'Ziomeczek już jest.', username: params[:trip][:username] }
          end
        }
      else
        format.html {
          redirect_to @trip, notice: 'Nie dziala cos.'
        }
        format.json {
          render json: { message: 'Nie dodano ziomeczka.' }
        }
      end
    end
  end

  def unjoin
    respond_to do |format|
      user = User.find_by(username: params[:trip][:username])
      if user
        format.html {
          if @trip.joined?(user)
            @trip.users.delete(user)
          end
          redirect_to @trip, notice: 'Wywalono ziomeczka.'
        }
        format.json {
          if @trip.joined?(user)
            @trip.users.delete(user)
            render json: { message: 'Wywalono ziomeczka.', username: params[:trip][:username] }
          else
            render json: { message: 'Ziomeczka nie ma.', username: params[:trip][:username] }
          end
        }
      else
        format.html {
          redirect_to @trip, notice: 'Nie dziala cos.'
        }
        format.json {
          render json: { message: 'Nie wywalono ziomeczka.' }
        }
      end
    end
  end

  def join_html
    render 'join'
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
      params.require(:trip).permit(:name, :start_date, :end_date)
    end
end
