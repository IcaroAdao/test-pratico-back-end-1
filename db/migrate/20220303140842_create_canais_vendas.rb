class CreateCanaisVendas < ActiveRecord::Migration[7.0]
  def change
    create_table :canais_vendas do |t|
      t.string :descricao, limit: 20, null: false
      t.timestamps
    end
  end
end
