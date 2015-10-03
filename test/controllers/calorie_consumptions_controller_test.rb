require 'test_helper'

class CalorieConsumptionsControllerTest < ActionController::TestCase
  setup do
    @calorie_consumption = calorie_consumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calorie_consumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calorie_consumption" do
    assert_difference('CalorieConsumption.count') do
      post :create, calorie_consumption: { amount: @calorie_consumption.amount, date: @calorie_consumption.date, name: @calorie_consumption.name }
    end

    assert_redirected_to calorie_consumption_path(assigns(:calorie_consumption))
  end

  test "should show calorie_consumption" do
    get :show, id: @calorie_consumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calorie_consumption
    assert_response :success
  end

  test "should update calorie_consumption" do
    patch :update, id: @calorie_consumption, calorie_consumption: { amount: @calorie_consumption.amount, date: @calorie_consumption.date, name: @calorie_consumption.name }
    assert_redirected_to calorie_consumption_path(assigns(:calorie_consumption))
  end

  test "should destroy calorie_consumption" do
    assert_difference('CalorieConsumption.count', -1) do
      delete :destroy, id: @calorie_consumption
    end

    assert_redirected_to calorie_consumptions_path
  end
end
