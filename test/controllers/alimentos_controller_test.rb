require "test_helper"

class AlimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alimento = alimentos(:one)
  end

  test "should get index" do
    get alimentos_url, as: :json
    assert_response :success
  end

  test "should create alimento" do
    assert_difference("Alimento.count") do
      post alimentos_url, params: { alimento: { nombre: @alimento.nombre } }, as: :json
    end

    assert_response :created
  end

  test "should show alimento" do
    get alimento_url(@alimento), as: :json
    assert_response :success
  end

  test "should update alimento" do
    patch alimento_url(@alimento), params: { alimento: { nombre: @alimento.nombre } }, as: :json
    assert_response :success
  end

  test "should destroy alimento" do
    assert_difference("Alimento.count", -1) do
      delete alimento_url(@alimento), as: :json
    end

    assert_response :no_content
  end
end
