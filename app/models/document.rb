class Document
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :date, type: String
  field :file_doc, type: String
  mount_uploader :file_doc, FileDocUploader
  has_and_belongs_to_many :dossiers
  has_and_belongs_to_many :tags   
  before_destroy { |doc| DocumentBox.delete(doc.file_doc_filename) }
end
