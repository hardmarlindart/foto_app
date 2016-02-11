json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome_completo, :alcunha, :idade, :nome_mae, :nome_pai
  json.url pessoa_url(pessoa, format: :json)
end
