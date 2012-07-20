class Emplacement
  include Mongoid::Document
  field :name, type: String
  embeds_many :positions
  belongs_to :salle
end
