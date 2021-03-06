class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.password = params[:password]

    respond_to do |format|
      if @user.save
        @message = 'Konto utworzone pomyślnie. Kliknij dalej aby się zalogować.'
        format.html { redirect_to @user, notice: 'Konto utworzone pomyślnie. Kliknij dalej aby się zalogować.' }
        format.json { render :show, status: :created }
      else
        @message = 'Nie udało sie założyć konta.'
        format.html { render :new }
        format.json { render json: {
          errors: @user.errors,
          message: @message
          }, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def friends
    @current_user = User.find(params[:id])
    render :friends
  end

  def set_device_id
    @user = User.find_by(token: params[:token])
    if @user != nil
      @user.device_id = params[:device_id]
      @user.save
      render json: {msg: 'ok'}, status: :ok
    else
      render json: {msg: 'nie znaleziono usera po takim tokenie'}, status: :ok
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :name, :last_name, :password, :password_confirmation)
    end
end
