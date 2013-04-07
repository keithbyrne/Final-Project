require 'test_helper'

class TicketnamesControllerTest < ActionController::TestCase
  setup do
    @ticketname = ticketnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticketnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticketname" do
    assert_difference('Ticketname.count') do
      post :create, ticketname: { discount: @ticketname.discount, name: @ticketname.name }
    end

    assert_redirected_to ticketname_path(assigns(:ticketname))
  end

  test "should show ticketname" do
    get :show, id: @ticketname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticketname
    assert_response :success
  end

  test "should update ticketname" do
    put :update, id: @ticketname, ticketname: { discount: @ticketname.discount, name: @ticketname.name }
    assert_redirected_to ticketname_path(assigns(:ticketname))
  end

  test "should destroy ticketname" do
    assert_difference('Ticketname.count', -1) do
      delete :destroy, id: @ticketname
    end

    assert_redirected_to ticketnames_path
  end
end
