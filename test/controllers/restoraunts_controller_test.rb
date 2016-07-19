require 'test_helper'

class RestorauntsControllerTest < ActionController::TestCase
  setup do
    @restoraunt = restoraunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restoraunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restoraunt" do
    assert_difference('Restoraunt.count') do
      post :create, restoraunt: { phone: @restoraunt.phone, reservation_id: @restoraunt.reservation_id, title: @restoraunt.title, user_id: @restoraunt.user_id, w_time_end: @restoraunt.w_time_end, w_time_start: @restoraunt.w_time_start, wr_time_end: @restoraunt.wr_time_end, wr_time_start: @restoraunt.wr_time_start }
    end

    assert_redirected_to restoraunt_path(assigns(:restoraunt))
  end

  test "should show restoraunt" do
    get :show, id: @restoraunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restoraunt
    assert_response :success
  end

  test "should update restoraunt" do
    patch :update, id: @restoraunt, restoraunt: { phone: @restoraunt.phone, reservation_id: @restoraunt.reservation_id, title: @restoraunt.title, user_id: @restoraunt.user_id, w_time_end: @restoraunt.w_time_end, w_time_start: @restoraunt.w_time_start, wr_time_end: @restoraunt.wr_time_end, wr_time_start: @restoraunt.wr_time_start }
    assert_redirected_to restoraunt_path(assigns(:restoraunt))
  end

  test "should destroy restoraunt" do
    assert_difference('Restoraunt.count', -1) do
      delete :destroy, id: @restoraunt
    end

    assert_redirected_to restoraunts_path
  end
end
