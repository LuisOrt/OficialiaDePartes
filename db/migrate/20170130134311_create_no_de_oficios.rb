class CreateNoDeOficios < ActiveRecord::Migration[5.0]
  def change
    create_table :no_de_oficios do |t|
      t.integer :Folio
      t.string :Departamento
      t.text :Proposito
      t.timestamps
    end
  end
end
