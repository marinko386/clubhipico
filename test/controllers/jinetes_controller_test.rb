require 'test_helper'

class JinetesControllerTest < ActionController::TestCase
  setup do
    @jinete = jinetes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jinetes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jinete" do
    assert_difference('Jinete.count') do
      post :create, jinete: { nombre: @jinete.nombre }
    end

    assert_redirected_to jinete_path(assigns(:jinete))
  end

  test "should show jinete" do
    get :show, id: @jinete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jinete
    assert_response :success
  end

  test "should update jinete" do
    patch :update, id: @jinete, jinete: { nombre: @jinete.nombre }
    assert_redirected_to jinete_path(assigns(:jinete))
  end

  test "should destroy jinete" do
    assert_difference('Jinete.count', -1) do
      delete :destroy, id: @jinete
    end

    assert_redirected_to jinetes_path
  end
end
