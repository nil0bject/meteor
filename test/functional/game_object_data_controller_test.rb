require 'test_helper'

class GameObjectDataControllerTest < ActionController::TestCase
  setup do
    @game_object_datum = game_object_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_object_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_object_datum" do
    assert_difference('GameObjectDatum.count') do
      post :create, game_object_datum: { name: @game_object_datum.name, sprites_url: @game_object_datum.sprites_url }
    end

    assert_redirected_to game_object_datum_path(assigns(:game_object_datum))
  end

  test "should show game_object_datum" do
    get :show, id: @game_object_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_object_datum
    assert_response :success
  end

  test "should update game_object_datum" do
    put :update, id: @game_object_datum, game_object_datum: { name: @game_object_datum.name, sprites_url: @game_object_datum.sprites_url }
    assert_redirected_to game_object_datum_path(assigns(:game_object_datum))
  end

  test "should destroy game_object_datum" do
    assert_difference('GameObjectDatum.count', -1) do
      delete :destroy, id: @game_object_datum
    end

    assert_redirected_to game_object_data_path
  end
end
