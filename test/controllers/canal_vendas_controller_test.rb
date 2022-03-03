require "test_helper"

class CanalVendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @canal_venda = canais_vendas(:one)
  end

  test "should get index" do
    get canais_vendas_url, as: :json
    assert_response :success
  end

  test "should create canal_venda" do
    assert_difference("CanalVenda.count") do
      post canais_vendas_url, params: { canal_venda: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show canal_venda" do
    get canal_venda_url(@canal_venda), as: :json
    assert_response :success
  end

  test "should update canal_venda" do
    patch canal_venda_url(@canal_venda), params: { canal_venda: {  } }, as: :json
    assert_response :success
  end

  test "should destroy canal_venda" do
    assert_difference("CanalVenda.count", -1) do
      delete canal_venda_url(@canal_venda), as: :json
    end

    assert_response :no_content
  end
end
