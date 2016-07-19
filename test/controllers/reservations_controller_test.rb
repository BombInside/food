require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post :create, reservation: { cont_email: @reservation.cont_email, cont_message: @reservation.cont_message, cont_name: @reservation.cont_name, cont_phone: @reservation.cont_phone, pers_count: @reservation.pers_count, res_date: @reservation.res_date, res_time: @reservation.res_time, restoraunt: @reservation.restoraunt, user_id: @reservation.user_id }
    end

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should show reservation" do
    get :show, id: @reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation
    assert_response :success
  end

  test "should update reservation" do
    patch :update, id: @reservation, reservation: { cont_email: @reservation.cont_email, cont_message: @reservation.cont_message, cont_name: @reservation.cont_name, cont_phone: @reservation.cont_phone, pers_count: @reservation.pers_count, res_date: @reservation.res_date, res_time: @reservation.res_time, restoraunt: @reservation.restoraunt, user_id: @reservation.user_id }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete :destroy, id: @reservation
    end

    assert_redirected_to reservations_path
  end
end
