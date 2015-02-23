require 'test_helper'

class DietRestrictionsControllerTest < ActionController::TestCase
  setup do
    @diet_restriction = diet_restrictions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diet_restrictions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diet_restriction" do
    assert_difference('DietRestriction.count') do
      post :create, diet_restriction: {  }
    end

    assert_redirected_to diet_restriction_path(assigns(:diet_restriction))
  end

  test "should show diet_restriction" do
    get :show, id: @diet_restriction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diet_restriction
    assert_response :success
  end

  test "should update diet_restriction" do
    patch :update, id: @diet_restriction, diet_restriction: {  }
    assert_redirected_to diet_restriction_path(assigns(:diet_restriction))
  end

  test "should destroy diet_restriction" do
    assert_difference('DietRestriction.count', -1) do
      delete :destroy, id: @diet_restriction
    end

    assert_redirected_to diet_restrictions_path
  end
end
