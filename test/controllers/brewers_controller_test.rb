require 'test_helper'

class BrewersControllerTest < ActionController::TestCase
  setup do
    @brewer = brewers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brewers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewer" do
    assert_difference('Brewer.count') do
      post :create, brewer: { first_name: @brewer.first_name, last_name: @brewer.last_name }
    end

    assert_redirected_to brewer_path(assigns(:brewer))
  end

  test "should show brewer" do
    get :show, id: @brewer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewer
    assert_response :success
  end

  test "should update brewer" do
    patch :update, id: @brewer, brewer: { first_name: @brewer.first_name, last_name: @brewer.last_name }
    assert_redirected_to brewer_path(assigns(:brewer))
  end

  test "should destroy brewer" do
    assert_difference('Brewer.count', -1) do
      delete :destroy, id: @brewer
    end

    assert_redirected_to brewers_path
  end
end
