require 'test_helper'

class GameObjectsControllerTest < ActionController::TestCase
  setup do
    @game_object = game_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_object" do
    assert_difference('GameObject.count') do
      post :create, game_object: { x: @game_object.x, y: @game_object.y }
    end

    assert_redirected_to game_object_path(assigns(:game_object))
  end

  test "should show game_object" do
    get :show, id: @game_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_object
    assert_response :success
  end

  test "should update game_object" do
    put :update, id: @game_object, game_object: { x: @game_object.x, y: @game_object.y }
    assert_redirected_to game_object_path(assigns(:game_object))
  end

  test "should destroy game_object" do
    assert_difference('GameObject.count', -1) do
      delete :destroy, id: @game_object
    end

    assert_redirected_to game_objects_path
  end
end
