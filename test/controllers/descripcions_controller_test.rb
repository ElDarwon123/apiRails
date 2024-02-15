require "test_helper"

class DescripcionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descripcion = descripcions(:one)
  end

  test "should get index" do
    get descripcions_url, as: :json
    assert_response :success
  end

  test "should create descripcion" do
    assert_difference("Descripcion.count") do
      post descripcions_url, params: { descripcion: { test: @descripcion.test } }, as: :json
    end

    assert_response :created
  end

  test "should show descripcion" do
    get descripcion_url(@descripcion), as: :json
    assert_response :success
  end

  test "should update descripcion" do
    patch descripcion_url(@descripcion), params: { descripcion: { test: @descripcion.test } }, as: :json
    assert_response :success
  end

  test "should destroy descripcion" do
    assert_difference("Descripcion.count", -1) do
      delete descripcion_url(@descripcion), as: :json
    end

    assert_response :no_content
  end
end
