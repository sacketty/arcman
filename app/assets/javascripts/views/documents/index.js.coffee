class Arcman.Views.DocumentsIndex extends Backbone.View

  template: JST['documents/index']

  render: ->
    $(@el).html(@template())
    this
