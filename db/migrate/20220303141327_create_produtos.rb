class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome, limit: 100
      t.decimal :preco, precision: 5, scale: 2
      t.references :canal_venda, null: false, foreign_key: true
    end
  end
end
