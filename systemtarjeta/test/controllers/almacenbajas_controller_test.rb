require 'test_helper'

class AlmacenbajasControllerTest < ActionController::TestCase
  setup do
    @almacenbaja = almacenbajas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:almacenbajas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create almacenbaja" do
    assert_difference('Almacenbaja.count') do
      post :create, almacenbaja: { motivo_id: @almacenbaja.motivo_id, tarjetum_id: @almacenbaja.tarjetum_id, user_id: @almacenbaja.user_id }
    end

    assert_redirected_to almacenbaja_path(assigns(:almacenbaja))
  end

  test "should show almacenbaja" do
    get :show, id: @almacenbaja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @almacenbaja
    assert_response :success
  end

  test "should update almacenbaja" do
    patch :update, id: @almacenbaja, almacenbaja: { motivo_id: @almacenbaja.motivo_id, tarjetum_id: @almacenbaja.tarjetum_id, user_id: @almacenbaja.user_id }
    assert_redirected_to almacenbaja_path(assigns(:almacenbaja))
  end

  test "should destroy almacenbaja" do
    assert_difference('Almacenbaja.count', -1) do
      delete :destroy, id: @almacenbaja
    end

    assert_redirected_to almacenbajas_path
  end
end
