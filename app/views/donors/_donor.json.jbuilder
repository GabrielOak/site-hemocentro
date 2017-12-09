json.extract! donor, :id, :nome, :idade, :email, :telefone, :cpf, :endereco, :tipo_sanguineo, :created_at, :updated_at
json.url donor_url(donor, format: :json)
