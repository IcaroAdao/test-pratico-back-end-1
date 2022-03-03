class CanalVenda < ApplicationRecord
  validates :descricao, length: { minimum: 3, maximum: 20 }

  has_many :produtos
end
