class Arcman.Views.DocumentsUpload extends Backbone.View

  template: JST['documents/upload']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(documents: @collection))
    this

