require 'test_helper'

class OtelsControllerTest < ActionController::TestCase
  setup do
    @otel = otels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:otels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create otel" do
    assert_difference('Otel.count') do
      post :create, otel: { Oadress: @otel.Oadress, Oemail: @otel.Oemail, Oname: @otel.Oname, Ophone: @otel.Ophone }
    end

    assert_redirected_to otel_path(assigns(:otel))
  end

  test "should show otel" do
    get :show, id: @otel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @otel
    assert_response :success
  end

  test "should update otel" do
    patch :update, id: @otel, otel: { Oadress: @otel.Oadress, Oemail: @otel.Oemail, Oname: @otel.Oname, Ophone: @otel.Ophone }
    assert_redirected_to otel_path(assigns(:otel))
  end

  test "should destroy otel" do
    assert_difference('Otel.count', -1) do
      delete :destroy, id: @otel
    end

    assert_redirected_to otels_path
  end
end
