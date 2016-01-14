require 'test_helper'

class AllotLeavesControllerTest < ActionController::TestCase
  setup do
    @allot_leafe = allot_leaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allot_leaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allot_leafe" do
    assert_difference('AllotLeave.count') do
      post :create, allot_leafe: { employee_id: @allot_leafe.employee_id, paymonth_id: @allot_leafe.paymonth_id }
    end

    assert_redirected_to allot_leafe_path(assigns(:allot_leafe))
  end

  test "should show allot_leafe" do
    get :show, id: @allot_leafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allot_leafe
    assert_response :success
  end

  test "should update allot_leafe" do
    patch :update, id: @allot_leafe, allot_leafe: { employee_id: @allot_leafe.employee_id, paymonth_id: @allot_leafe.paymonth_id }
    assert_redirected_to allot_leafe_path(assigns(:allot_leafe))
  end

  test "should destroy allot_leafe" do
    assert_difference('AllotLeave.count', -1) do
      delete :destroy, id: @allot_leafe
    end

    assert_redirected_to allot_leaves_path
  end
end
