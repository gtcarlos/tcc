require 'test_helper'

class InterestsControllerTest < ActionController::TestCase
  setup do
    @interest = interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interest" do
    assert_difference('Interest.count') do
      post :create, interest: { area: @interest.area, city: @interest.city, foundation_time: @interest.foundation_time, invested_startups: @interest.invested_startups, investor_groups: @interest.investor_groups, linked_startups: @interest.linked_startups, number_employees: @interest.number_employees, number_investors: @interest.number_investors, region: @interest.region, state: @interest.state, type: @interest.type }
    end

    assert_redirected_to interest_path(assigns(:interest))
  end

  test "should show interest" do
    get :show, id: @interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interest
    assert_response :success
  end

  test "should update interest" do
    put :update, id: @interest, interest: { area: @interest.area, city: @interest.city, foundation_time: @interest.foundation_time, invested_startups: @interest.invested_startups, investor_groups: @interest.investor_groups, linked_startups: @interest.linked_startups, number_employees: @interest.number_employees, number_investors: @interest.number_investors, region: @interest.region, state: @interest.state, type: @interest.type }
    assert_redirected_to interest_path(assigns(:interest))
  end

  test "should destroy interest" do
    assert_difference('Interest.count', -1) do
      delete :destroy, id: @interest
    end

    assert_redirected_to interests_path
  end
end
