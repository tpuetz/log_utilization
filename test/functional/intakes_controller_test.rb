require 'test_helper'

class IntakesControllerTest < ActionController::TestCase
  setup do
    @intake = intakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intake" do
    assert_difference('Intake.count') do
      post :create, intake: @intake.attributes
    end

    assert_redirected_to intake_path(assigns(:intake))
  end

  test "should show intake" do
    get :show, id: @intake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intake
    assert_response :success
  end

  test "should update intake" do
    put :update, id: @intake, intake: @intake.attributes
    assert_redirected_to intake_path(assigns(:intake))
  end

  test "should destroy intake" do
    assert_difference('Intake.count', -1) do
      delete :destroy, id: @intake
    end

    assert_redirected_to intakes_path
  end
end
