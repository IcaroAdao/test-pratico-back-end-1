class CreateCanaisVendasProdutosJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :canais_vendas, :produtos
  end
end
