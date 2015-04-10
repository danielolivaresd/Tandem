class UserLanguagesController < ApplicationController
  before_action :set_user_language, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_all_languages

  # GET /user_languages
  # GET /user_languages.json
  def index
    @user_languages = @user.user_languages.all
  end

  # GET /user_languages/1
  # GET /user_languages/1.json
  def show
  end

  # GET /user_languages/new
  def new
    @user_language = @user.user_languages.new
  end

  # GET /user_languages/1/edit
  def edit
  end

  # POST /user_languages
  # POST /user_languages.json
  def create
    @user_language = @user.user_languages.new(user_language_params)

    respond_to do |format|
      if @user_language.save
        format.html { redirect_to user_languages_path, notice: 'User language was successfully created.' }
        format.json { render :show, status: :created, location: @user_language }
      else
        format.html { render :new }
        format.json { render json: user_languages_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_languages/1
  # PATCH/PUT /user_languages/1.json
  def update
    respond_to do |format|
      if @user_language.update(user_language_params)
        format.html { redirect_to user_languages_path, notice: 'User language was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_language }
      else
        format.html { render :edit }
        format.json { render json: user_languages_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_languages/1
  # DELETE /user_languages/1.json
  def destroy
    @user_language.destroy
    respond_to do |format|
      format.html { redirect_to user_languages_url, notice: 'User language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_language
      @user_language = UserLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_language_params
      params.require(:user_language).permit(:user,:language, :language_id,:level,:is_native)
    end

    def set_user
      @user = current_user
    end

    def set_all_languages
      @all_languages = Language.all
    end
end
