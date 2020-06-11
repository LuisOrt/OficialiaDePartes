class CambiaTipoDato < ActiveRecord::Migration[5.0]
  def change
	change_column(:no_de_correos, :No_de_Correo, :integer)
  end
end
