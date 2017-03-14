require 'test_helper'

class OrphanagesControllerTest < ActionController::TestCase
  setup do
    @orphanage = orphanages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orphanages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orphanage" do
    assert_difference('Orphanage.count') do
      post :create, orphanage: {  }
    end

    assert_redirected_to orphanage_path(assigns(:orphanage))
  end

  test "should show orphanage" do
    get :show, id: @orphanage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orphanage
    assert_response :success
  end

  test "should update orphanage" do
    patch :update, id: @orphanage, orphanage: {  }
    assert_redirected_to orphanage_path(assigns(:orphanage))
  end

  test "should destroy orphanage" do
    assert_difference('Orphanage.count', -1) do
      delete :destroy, id: @orphanage
    end

    assert_redirected_to orphanages_path
  end
end
