require "test_helper"

class EstadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estado = estados(:one)
  end

  test "should get index" do
    get estados_url, as: :json
    assert_response :success
  end

  test "should create estado" do
    assert_difference("Estado.count") do
      post estados_url, params: { estado: { nome: @estado.nome, sigla: @estado.sigla } }, as: :json
    end

    assert_response :created
  end

  test "should show estado" do
    get estado_url(@estado), as: :json
    assert_response :success
  end

  test "should update estado" do
    patch estado_url(@estado), params: { estado: { nome: @estado.nome, sigla: @estado.sigla } }, as: :json
    assert_response :success
  end

  test "should destroy estado" do
    assert_difference("Estado.count", -1) do
      delete estado_url(@estado), as: :json
    end

    assert_response :no_content
  end
end
