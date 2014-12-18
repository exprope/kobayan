require 'test_helper'

class ImakokosControllerTest < ActionController::TestCase
  setup do
    @imakoko = imakokos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imakokos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imakoko" do
    assert_difference('Imakoko.count') do
      post :create, imakoko: { name: @imakoko.name }
    end

    assert_redirected_to imakoko_path(assigns(:imakoko))
  end

  test "should show imakoko" do
    get :show, id: @imakoko
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imakoko
    assert_response :success
  end

  test "should update imakoko" do
    patch :update, id: @imakoko, imakoko: { name: @imakoko.name }
    assert_redirected_to imakoko_path(assigns(:imakoko))
  end

  test "should destroy imakoko" do
    assert_difference('Imakoko.count', -1) do
      delete :destroy, id: @imakoko
    end

    assert_redirected_to imakokos_path
  end
end
