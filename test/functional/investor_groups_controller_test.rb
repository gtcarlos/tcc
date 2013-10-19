require 'test_helper'

class InvestorGroupsControllerTest < ActionController::TestCase
  setup do
    @investor_group = investor_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investor_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investor_group" do
    assert_difference('InvestorGroup.count') do
      post :create, investor_group: { area: @investor_group.area, description: @investor_group.description, name: @investor_group.name, privacy: @investor_group.privacy }
    end

    assert_redirected_to investor_group_path(assigns(:investor_group))
  end

  test "should show investor_group" do
    get :show, id: @investor_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investor_group
    assert_response :success
  end

  test "should update investor_group" do
    put :update, id: @investor_group, investor_group: { area: @investor_group.area, description: @investor_group.description, name: @investor_group.name, privacy: @investor_group.privacy }
    assert_redirected_to investor_group_path(assigns(:investor_group))
  end

  test "should destroy investor_group" do
    assert_difference('InvestorGroup.count', -1) do
      delete :destroy, id: @investor_group
    end

    assert_redirected_to investor_groups_path
  end
end
