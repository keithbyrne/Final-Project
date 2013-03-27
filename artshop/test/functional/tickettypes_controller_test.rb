require 'test_helper'

class TickettypesControllerTest < ActionController::TestCase
  setup do
    @tickettype = tickettypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tickettypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tickettype" do
    assert_difference('Tickettype.count') do
      post :create, tickettype: { discount: @tickettype.discount, type: @tickettype.type }
    end

    assert_redirected_to tickettype_path(assigns(:tickettype))
  end

  test "should show tickettype" do
    get :show, id: @tickettype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tickettype
    assert_response :success
  end

  test "should update tickettype" do
    put :update, id: @tickettype, tickettype: { discount: @tickettype.discount, type: @tickettype.type }
    assert_redirected_to tickettype_path(assigns(:tickettype))
  end

  test "should destroy tickettype" do
    assert_difference('Tickettype.count', -1) do
      delete :destroy, id: @tickettype
    end

    assert_redirected_to tickettypes_path
  end
end
