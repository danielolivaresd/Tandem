class LanguageInterestsController < ApplicationController
  before_action :set_language_interest, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :set_all_languages
  before_action :authenticate_user!

  # GET /language_interests
  # GET /language_interests.json
  def index
    @language_interests = @user.language_interests.all
  end

  # GET /language_interests/1
  # GET /language_interests/1.json
  def show
  end

  # GET /language_interests/new
  def new
    @language_interest = @user.language_interests.new
  end

  # GET /language_interests/1/edit
  def edit
  end

  # POST /language_interests
  # POST /language_interests.json
  def create
    @language_interest = @user.language_interests.new(language_interest_params)

    respond_to do |format|
      if @language_interest.save
        format.html { redirect_to new_match_path, notice: 'Language interest was successfully created.' }
        format.json { render :show, status: :created, location: @language_interest }
      else
        format.html { render :new }
        format.json { render json: language_interests_path  .errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_interests/1
  # PATCH/PUT /language_interests/1.json
  def update
    respond_to do |format|
      if @language_interest.update(language_interest_params)
        format.html { redirect_to language_interests_path, notice: 'Language interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @language_interest }
      else
        format.html { render :edit }
        format.json { render json: language_interests_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_interests/1
  # DELETE /language_interests/1.json
  def destroy
    @language_interest.destroy
    respond_to do |format|
      format.html { redirect_to language_interests_url, notice: 'Language interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_interest
      @language_interest = LanguageInterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_interest_params
      params.require(:language_interest).permit(:user,:language, :language_id,:actual_level)
    end

    def set_user
      @user = current_user
    end

    def set_all_languages
      @all_languages = Language.all.order(:name)
    end
end
