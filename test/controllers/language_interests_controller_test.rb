require 'test_helper'

class LanguageInterestsControllerTest < ActionController::TestCase
  setup do
    @language_interest = language_interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:language_interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create language_interest" do
    assert_difference('LanguageInterest.count') do
      post :create, language_interest: {  }
    end

    assert_redirected_to language_interest_path(assigns(:language_interest))
  end

  test "should show language_interest" do
    get :show, id: @language_interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @language_interest
    assert_response :success
  end

  test "should update language_interest" do
    patch :update, id: @language_interest, language_interest: {  }
    assert_redirected_to language_interest_path(assigns(:language_interest))
  end

  test "should destroy language_interest" do
    assert_difference('LanguageInterest.count', -1) do
      delete :destroy, id: @language_interest
    end

    assert_redirected_to language_interests_path
  end
end
