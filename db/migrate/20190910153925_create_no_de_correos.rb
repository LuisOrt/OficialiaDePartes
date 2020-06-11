class CreateNoDeCorreos < ActiveRecord::Migration[5.0]
  def change
    create_table :no_de_correos do |t|
      t.integer :No_de_Correo
      t.string :Departamento
      t.text :Proposito

      t.timestamps
    end
  end
end
