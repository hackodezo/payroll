require 'test_helper'

class EmployeeLeavesControllerTest < ActionController::TestCase
  setup do
    @employee_leafe = employee_leaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_leaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_leafe" do
    assert_difference('EmployeeLeave.count') do
      post :create, employee_leafe: { allot_leave_id: @employee_leafe.allot_leave_id, paymonth_leave_id: @employee_leafe.paymonth_leave_id, value: @employee_leafe.value }
    end

    assert_redirected_to employee_leafe_path(assigns(:employee_leafe))
  end

  test "should show employee_leafe" do
    get :show, id: @employee_leafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_leafe
    assert_response :success
  end

  test "should update employee_leafe" do
    patch :update, id: @employee_leafe, employee_leafe: { allot_leave_id: @employee_leafe.allot_leave_id, paymonth_leave_id: @employee_leafe.paymonth_leave_id, value: @employee_leafe.value }
    assert_redirected_to employee_leafe_path(assigns(:employee_leafe))
  end

  test "should destroy employee_leafe" do
    assert_difference('EmployeeLeave.count', -1) do
      delete :destroy, id: @employee_leafe
    end

    assert_redirected_to employee_leaves_path
  end
end
