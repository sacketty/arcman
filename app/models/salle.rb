class Salle
  include Mongoid::Document
  field :name, type: String
  has_many :emplacements
end
