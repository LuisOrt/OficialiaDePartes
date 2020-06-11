class NoDeCorreo < ApplicationRecord
validates :No_de_Correo, :Departamento, :Proposito,:presence => { message: "No puede dejarse vacio" }
end
