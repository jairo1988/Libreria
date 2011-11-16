require 'test_helper'

class ProximamentesControllerTest < ActionController::TestCase
  setup do
    @proximamente = proximamentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proximamentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proximamente" do
    assert_difference('Proximamente.count') do
      post :create, proximamente: @proximamente.attributes
    end

    assert_redirected_to proximamente_path(assigns(:proximamente))
  end

  test "should show proximamente" do
    get :show, id: @proximamente.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proximamente.to_param
    assert_response :success
  end

  test "should update proximamente" do
    put :update, id: @proximamente.to_param, proximamente: @proximamente.attributes
    assert_redirected_to proximamente_path(assigns(:proximamente))
  end

  test "should destroy proximamente" do
    assert_difference('Proximamente.count', -1) do
      delete :destroy, id: @proximamente.to_param
    end

    assert_redirected_to proximamentes_path
  end
end
