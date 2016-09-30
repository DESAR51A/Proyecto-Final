require 'test_helper'

class EmployeeRolesControllerTest < ActionController::TestCase
  setup do
    @employee_role = employee_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_role" do
    assert_difference('EmployeeRole.count') do
      post :create, employee_role: { nom_rol: @employee_role.nom_rol }
    end

    assert_redirected_to employee_role_path(assigns(:employee_role))
  end

  test "should show employee_role" do
    get :show, id: @employee_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_role
    assert_response :success
  end

  test "should update employee_role" do
    patch :update, id: @employee_role, employee_role: { nom_rol: @employee_role.nom_rol }
    assert_redirected_to employee_role_path(assigns(:employee_role))
  end

  test "should destroy employee_role" do
    assert_difference('EmployeeRole.count', -1) do
      delete :destroy, id: @employee_role
    end

    assert_redirected_to employee_roles_path
  end
end
