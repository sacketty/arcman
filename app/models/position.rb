class Position
  include Mongoid::Document
  field :description, type: String
  has_many :dossiers
  embedded_in :emplacement
end
