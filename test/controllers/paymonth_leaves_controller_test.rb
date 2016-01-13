require 'test_helper'

class PaymonthLeavesControllerTest < ActionController::TestCase
  setup do
    @paymonth_leafe = paymonth_leaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paymonth_leaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paymonth_leafe" do
    assert_difference('PaymonthLeave.count') do
      post :create, paymonth_leafe: { leave_id: @paymonth_leafe.leave_id, paymonth_id: @paymonth_leafe.paymonth_id, value: @paymonth_leafe.value }
    end

    assert_redirected_to paymonth_leafe_path(assigns(:paymonth_leafe))
  end

  test "should show paymonth_leafe" do
    get :show, id: @paymonth_leafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paymonth_leafe
    assert_response :success
  end

  test "should update paymonth_leafe" do
    patch :update, id: @paymonth_leafe, paymonth_leafe: { leave_id: @paymonth_leafe.leave_id, paymonth_id: @paymonth_leafe.paymonth_id, value: @paymonth_leafe.value }
    assert_redirected_to paymonth_leafe_path(assigns(:paymonth_leafe))
  end

  test "should destroy paymonth_leafe" do
    assert_difference('PaymonthLeave.count', -1) do
      delete :destroy, id: @paymonth_leafe
    end

    assert_redirected_to paymonth_leaves_path
  end
end
