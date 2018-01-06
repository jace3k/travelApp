class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  before_action :require_token
  # GET /reviews
  # GET /reviews.json
  def index
    @place = Place.find(params[:id])
    @review = @place.reviews.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    begin
      @place = Place.find(params[:id])
      @review = @place.reviews.find(params[:reviewid])
    rescue Exception
      render json: {message: 'Nie znaleziono id.'}
    end
  end

  # GET /reviews/new
  def new
    @place = Place.find(params[:id])
    @review = @place.reviews.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @place = Place.find(params[:id])
    @review = @place.reviews.new(review_params)
    @review.user = current_user

    respond_to do |format|
      if @review.save
        format.html { redirect_to [@place, @review], notice: 'Review was successfully created.' }
        format.json { render json: {message: 'Dodano opinie', content: @review.content} }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to [@place, @review], notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    begin
      @place = Place.find(params[:id])
      @review = @place.reviews.find(params[:reviewid])
      @review.destroy
    rescue Exception
      render json: {message: 'Nie znaleziono id.'}
    end
    render json: { message: 'Usunięto opinie.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      begin
        @place = Place.find(params[:id])
        @review = @place.reviews.find(params[:reviewid])
      rescue Exception
        render json: {message: 'Nie ma takiego id.'}
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:place_id, :user_id, :content)
    end
end
