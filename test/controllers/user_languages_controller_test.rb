require 'test_helper'

class UserLanguagesControllerTest < ActionController::TestCase
  setup do
    @user_language = user_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_language" do
    assert_difference('UserLanguage.count') do
      post :create, user_language: {  }
    end

    assert_redirected_to user_language_path(assigns(:user_language))
  end

  test "should show user_language" do
    get :show, id: @user_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_language
    assert_response :success
  end

  test "should update user_language" do
    patch :update, id: @user_language, user_language: {  }
    assert_redirected_to user_language_path(assigns(:user_language))
  end

  test "should destroy user_language" do
    assert_difference('UserLanguage.count', -1) do
      delete :destroy, id: @user_language
    end

    assert_redirected_to user_languages_path
  end
end
