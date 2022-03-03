class Produto < ApplicationRecord
  validates :nome, presence: true, length: { minimum: 3, maximum: 100 }
  validates :preco, numericality: { greater_than: 0 }

  belongs_to :canal_venda
end
