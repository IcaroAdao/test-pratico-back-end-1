class Produto < ApplicationRecord
  validates :nome, presence: true, length: { minimum: 3, maximum: 100 }
  validates :preco, numericality: { greater_than: 0 }

  has_and_belongs_to_many :canal_venda
end
