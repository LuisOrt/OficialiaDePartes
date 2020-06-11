class Registro < ApplicationRecord	
	validates :No_Referencia, :Destinatario, :Remitente, :Asunto, :Documento, :Se_Turno_A,:presence => { message: "No puede dejarse vacío" }

	def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |registro|
				if registro.Se_Turno_A == User.current.email || User.current.admin? || User.current.oficialia? || registro.Se_Turno_A == User.current.departamento.nombre
					csv << registro.attributes.values_at(*column_names)
				end
			end
		end
	end
end
