class Tag
  include Mongoid::Document
  field :nom, type: String
  has_and_belongs_to_many :documents
end
