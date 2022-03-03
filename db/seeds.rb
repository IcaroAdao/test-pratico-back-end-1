unless CanalVenda.any?
  CanalVenda.create([{ descricao: 'Balcão' }, { descricao: 'E-Commerce' }])
end

unless Produto.any?
  Produto.create([
    { nome: 'Arroz Tio João', preco: 19.80, canal_venda_id: 1 },
    { nome: 'Biscoito Maria', preco: 22.00, canal_venda_id: 1 }
  ])
end