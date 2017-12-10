class CreateSangues < ActiveRecord::Migration[5.1]
  def change
    create_table :sangues do |t|
      t.string :tipo
      t.integer :quantidade

      t.timestamps
    end
  end
end
