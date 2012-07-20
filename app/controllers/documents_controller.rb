class DocumentsController < ApplicationController
  respond_to :json

  def index
    respond_with Document.all
  end

  def show
    respond_with Document.find(params[:id])
  end

  def create
    @doc = Document.new
    @doc[:original_filename] = params["Filename"]
#    respond_with Document.create(params[:document])
    respond_with @doc.save
  end

  def update
    respond_with Document.update(params[:id],params[:document])
  end

  def destroy
    respond_with Document.destroy(params[:id])
  end
end
