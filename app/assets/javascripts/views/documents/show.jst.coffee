class Arcman.Views.DocumentsShow extends Backbone.View

  template: JST['documents/show']

  render: ->
    @className = "test-class"
    $(@el).html(@template(@model.toJSON()))
    this
