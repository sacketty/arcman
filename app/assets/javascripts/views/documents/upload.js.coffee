class Arcman.Views.DocumentsUpload extends Backbone.View

  template: JST['documents/upload'] 

  element: "#thumb-docs"

  initialize: ->
    @collection.on('reset', @render, this)

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