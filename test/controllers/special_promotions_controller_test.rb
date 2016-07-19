require 'test_helper'

class SpecialPromotionsControllerTest < ActionController::TestCase
  setup do
    @special_promotion = special_promotions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_promotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_promotion" do
    assert_difference('SpecialPromotion.count') do
      post :create, special_promotion: { new_price: @special_promotion.new_price, old_price: @special_promotion.old_price, prom_end_date: @special_promotion.prom_end_date, prom_start_date: @special_promotion.prom_start_date, prom_title: @special_promotion.prom_title, restoraunt_id: @special_promotion.restoraunt_id, user_id: @special_promotion.user_id }
    end

    assert_redirected_to special_promotion_path(assigns(:special_promotion))
  end

  test "should show special_promotion" do
    get :show, id: @special_promotion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_promotion
    assert_response :success
  end

  test "should update special_promotion" do
    patch :update, id: @special_promotion, special_promotion: { new_price: @special_promotion.new_price, old_price: @special_promotion.old_price, prom_end_date: @special_promotion.prom_end_date, prom_start_date: @special_promotion.prom_start_date, prom_title: @special_promotion.prom_title, restoraunt_id: @special_promotion.restoraunt_id, user_id: @special_promotion.user_id }
    assert_redirected_to special_promotion_path(assigns(:special_promotion))
  end

  test "should destroy special_promotion" do
    assert_difference('SpecialPromotion.count', -1) do
      delete :destroy, id: @special_promotion
    end

    assert_redirected_to special_promotions_path
  end
end
