class CanalVenda < ApplicationRecord
  validates :descricao, length: { minimum: 3, maximum: 20 }

  has_and_belongs_to_many :produtos
end
