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
    @doc.title = "#{Indexer.next_value}_#{params['Filename']}" 
    @doc.file_doc = params['Filedata']       
#    respond_with Document.create(params[:document])
    respond_to do |format|
      if @doc.save
        format.html { render text: "doc  was successfully created." }
        format.json { render json: @doc, status: :created, location: @doc }
      else
        format.html { render text: "doc  was not successfully created." }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_with Document.update(params[:id],params[:document])
  end

  def destroy
    respond_with Document.destroy(params[:id])
  end
end
