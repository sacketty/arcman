class Arcman.Views.DocumentsUpload extends Backbone.View

  template: JST['documents/upload'] 

  element: "#thumb-docs"   

  events:
    'uploadSuccess': 'uploadSuccess'

  initialize: ->
    @collection.on('reset', @render, this)

  uploadSuccess: (event) ->
    @collection.fetch() 

  render: ->
    $(@el).html(@template()) 
    that = this
    _.each @collection.models, 
      (item) =>
        that.renderItem(item)
      this
    return this
	
  renderItem: (item) ->
    docView = new Arcman.Views.DocumentsItem(model: item)
    $(@element).append(docView.render().el)