require 'test_helper'

class ScreeninginfosControllerTest < ActionController::TestCase
  setup do
    @screeninginfo = screeninginfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:screeninginfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create screeninginfo" do
    assert_difference('Screeninginfo.count') do
      post :create, screeninginfo: { admissiontime: @screeninginfo.admissiontime, movie_id: @screeninginfo.movie_id, screeningroom_id: @screeninginfo.screeningroom_id, showdate: @screeninginfo.showdate, showtime: @screeninginfo.showtime }
    end

    assert_redirected_to screeninginfo_path(assigns(:screeninginfo))
  end

  test "should show screeninginfo" do
    get :show, id: @screeninginfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @screeninginfo
    assert_response :success
  end

  test "should update screeninginfo" do
    put :update, id: @screeninginfo, screeninginfo: { admissiontime: @screeninginfo.admissiontime, movie_id: @screeninginfo.movie_id, screeningroom_id: @screeninginfo.screeningroom_id, showdate: @screeninginfo.showdate, showtime: @screeninginfo.showtime }
    assert_redirected_to screeninginfo_path(assigns(:screeninginfo))
  end

  test "should destroy screeninginfo" do
    assert_difference('Screeninginfo.count', -1) do
      delete :destroy, id: @screeninginfo
    end

    assert_redirected_to screeninginfos_path
  end
end
