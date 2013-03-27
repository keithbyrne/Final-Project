require 'test_helper'

class ScreeningroomsControllerTest < ActionController::TestCase
  setup do
    @screeningroom = screeningrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:screeningrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create screeningroom" do
    assert_difference('Screeningroom.count') do
      post :create, screeningroom: { capacity: @screeningroom.capacity, name: @screeningroom.name }
    end

    assert_redirected_to screeningroom_path(assigns(:screeningroom))
  end

  test "should show screeningroom" do
    get :show, id: @screeningroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @screeningroom
    assert_response :success
  end

  test "should update screeningroom" do
    put :update, id: @screeningroom, screeningroom: { capacity: @screeningroom.capacity, name: @screeningroom.name }
    assert_redirected_to screeningroom_path(assigns(:screeningroom))
  end

  test "should destroy screeningroom" do
    assert_difference('Screeningroom.count', -1) do
      delete :destroy, id: @screeningroom
    end

    assert_redirected_to screeningrooms_path
  end
end
