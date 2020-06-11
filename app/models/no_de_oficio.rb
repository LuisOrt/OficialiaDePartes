class NoDeOficio < ApplicationRecord
	validates :Folio, :Departamento, :Proposito,:presence => { message: "No puede dejarse vacio" }

	def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |registro|
				if registro.Departamento == User.current.email || User.current.admin? || registro.Departamento == User.current.departamento.nombre
					csv << registro.attributes.values_at(*column_names)
				end
			end
		end
	end
end
