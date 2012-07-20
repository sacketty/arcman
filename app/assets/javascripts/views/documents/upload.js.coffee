class Arcman.Views.DocumentsUpload extends Backbone.View

  template: JST['documents/upload']

  render: ->
    $(@el).html(@template())
    this
