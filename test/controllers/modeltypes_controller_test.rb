require 'test_helper'

class ModeltypesControllerTest < ActionController::TestCase
  setup do
    @modeltype = modeltypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modeltypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modeltype" do
    assert_difference('Modeltype.count') do
      post :create, modeltype: { base_price: @modeltype.base_price, integer: @modeltype.integer, model_type_code: @modeltype.model_type_code, model_type_slug: @modeltype.model_type_slug, name: @modeltype.name }
    end

    assert_redirected_to modeltype_path(assigns(:modeltype))
  end

  test "should show modeltype" do
    get :show, id: @modeltype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modeltype
    assert_response :success
  end

  test "should update modeltype" do
    patch :update, id: @modeltype, modeltype: { base_price: @modeltype.base_price, integer: @modeltype.integer, model_type_code: @modeltype.model_type_code, model_type_slug: @modeltype.model_type_slug, name: @modeltype.name }
    assert_redirected_to modeltype_path(assigns(:modeltype))
  end

  test "should destroy modeltype" do
    assert_difference('Modeltype.count', -1) do
      delete :destroy, id: @modeltype
    end

    assert_redirected_to modeltypes_path
  end
end
