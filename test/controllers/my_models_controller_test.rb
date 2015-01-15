require 'test_helper'

class MyModelsControllerTest < ActionController::TestCase
  setup do
    @my_model = my_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_model" do
    assert_difference('MyModel.count') do
      post :create, my_model: { car_maker: @my_model.car_maker, car_model: @my_model.car_model, car_type: @my_model.car_type, car_year: @my_model.car_year, city: @my_model.city, first_name: @my_model.first_name, github_username: @my_model.github_username, last_name: @my_model.last_name, middle_name: @my_model.middle_name, state: @my_model.state, street: @my_model.street, suffix: @my_model.suffix, twitter_username: @my_model.twitter_username, website: @my_model.website, zipcode: @my_model.zipcode }
    end

    assert_redirected_to my_model_path(assigns(:my_model))
  end

  test "should show my_model" do
    get :show, id: @my_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_model
    assert_response :success
  end

  test "should update my_model" do
    patch :update, id: @my_model, my_model: { car_maker: @my_model.car_maker, car_model: @my_model.car_model, car_type: @my_model.car_type, car_year: @my_model.car_year, city: @my_model.city, first_name: @my_model.first_name, github_username: @my_model.github_username, last_name: @my_model.last_name, middle_name: @my_model.middle_name, state: @my_model.state, street: @my_model.street, suffix: @my_model.suffix, twitter_username: @my_model.twitter_username, website: @my_model.website, zipcode: @my_model.zipcode }
    assert_redirected_to my_model_path(assigns(:my_model))
  end

  test "should destroy my_model" do
    assert_difference('MyModel.count', -1) do
      delete :destroy, id: @my_model
    end

    assert_redirected_to my_models_path
  end
end
