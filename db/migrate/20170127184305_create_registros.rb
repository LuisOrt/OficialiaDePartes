class CreateRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :registros do |t|
      t.integer :Folio
      t.string :Soporte
      t.string :No_Referencia
      t.timestamp :Fecha_Recepcion
      t.date :Fecha_documento
      t.string :Destinatario
      t.string :Remitente
      t.text :Asunto
      t.string :Se_Turno_A
      t.integer :Documento
      t.integer :Anexos
      t.string :Instruccion
      t.date :Fecha_Limite
      
      t.timestamps
    end
  end
end