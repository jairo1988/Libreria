require 'test_helper'

class ProximosLibrosControllerTest < ActionController::TestCase
  setup do
    @proximo_libros = proximos_libros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proximos_libros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proximo_libros" do
    assert_difference('ProximoLibros.count') do
      post :create, proximo_libros: @proximo_libros.attributes
    end

    assert_redirected_to proximo_libros_path(assigns(:proximo_libros))
  end

  test "should show proximo_libros" do
    get :show, id: @proximo_libros.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proximo_libros.to_param
    assert_response :success
  end

  test "should update proximo_libros" do
    put :update, id: @proximo_libros.to_param, proximo_libros: @proximo_libros.attributes
    assert_redirected_to proximo_libros_path(assigns(:proximo_libros))
  end

  test "should destroy proximo_libros" do
    assert_difference('ProximoLibros.count', -1) do
      delete :destroy, id: @proximo_libros.to_param
    end

    assert_redirected_to proximos_libros_path
  end
end
