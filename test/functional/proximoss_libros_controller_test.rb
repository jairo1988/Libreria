require 'test_helper'

class ProximossLibrosControllerTest < ActionController::TestCase
  setup do
    @proximos_libros = proximoss_libros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proximoss_libros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proximos_libros" do
    assert_difference('ProximosLibros.count') do
      post :create, proximos_libros: @proximos_libros.attributes
    end

    assert_redirected_to proximos_libros_path(assigns(:proximos_libros))
  end

  test "should show proximos_libros" do
    get :show, id: @proximos_libros.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proximos_libros.to_param
    assert_response :success
  end

  test "should update proximos_libros" do
    put :update, id: @proximos_libros.to_param, proximos_libros: @proximos_libros.attributes
    assert_redirected_to proximos_libros_path(assigns(:proximos_libros))
  end

  test "should destroy proximos_libros" do
    assert_difference('ProximosLibros.count', -1) do
      delete :destroy, id: @proximos_libros.to_param
    end

    assert_redirected_to proximoss_libros_path
  end
end
