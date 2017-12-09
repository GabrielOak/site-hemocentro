class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :nome
      t.integer :idade
      t.string :email
      t.string :telefone
      t.string :cpf
      t.string :endereco
      t.string :tipo_sanguineo
      t.references :user

      t.timestamps
    end
  end
end
